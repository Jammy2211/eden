from VIS_CTI_AutoArray_Dataset.imaging import MaskedImaging
from VIS_CTI_AutoArray_Fit.fit import FitImaging
from VIS_CTI_AutoArray_Fit.fit import FitInterferometer
from VIS_CTI_AutoArray_Array.array_2d import Array2D
from VIS_CTI_AutoArray_Mask.mask_2d import Mask2D
from VIS_CTI_AutoArray_Dataset.imaging import Imaging


import numpy as np
import pytest

from VIS_CTI_AutoArray_Mock import mock


class TestFitImaging:
    def test__image_and_model_are_identical__no_masking__check_values_are_correct(self):

        mask = Mask2D.manual(
            mask=[[False, False], [False, False]], sub_size=1, pixel_scales=(1.0, 1.0)
        )

        data = Array2D.manual_mask(array=[1.0, 2.0, 3.0, 4.0], mask=mask)
        noise_map = Array2D.manual_mask(array=[2.0, 2.0, 2.0, 2.0], mask=mask)

        imaging = Imaging(image=data, noise_map=noise_map)

        masked_imaging = MaskedImaging(imaging=imaging, mask=mask)

        model_image = Array2D.manual_mask(array=[1.0, 2.0, 3.0, 4.0], mask=mask)

        fit = FitImaging(
            masked_imaging=masked_imaging,
            model_image=model_image,
            use_mask_in_fit=False,
        )

        assert (fit.mask == np.array([[False, False], [False, False]])).all()

        assert (fit.image.slim == np.array([1.0, 2.0, 3.0, 4.0])).all()
        assert (fit.image.native == np.array([[1.0, 2.0], [3.0, 4.0]])).all()

        assert (fit.noise_map.slim == np.array([2.0, 2.0, 2.0, 2.0])).all()
        assert (fit.noise_map.native == np.array([[2.0, 2.0], [2.0, 2.0]])).all()

        assert (fit.signal_to_noise_map.slim == np.array([0.5, 1.0, 1.5, 2.0])).all()
        assert (
            fit.signal_to_noise_map.native == np.array([[0.5, 1.0], [1.5, 2.0]])
        ).all()

        assert (fit.model_image.slim == np.array([1.0, 2.0, 3.0, 4.0])).all()
        assert (fit.model_image.native == np.array([[1.0, 2.0], [3.0, 4.0]])).all()

        assert (fit.residual_map.slim == np.array([0.0, 0.0, 0.0, 0.0])).all()
        assert (fit.residual_map.native == np.array([[0.0, 0.0], [0.0, 0.0]])).all()

        assert (
            fit.normalized_residual_map.slim == np.array([0.0, 0.0, 0.0, 0.0])
        ).all()
        assert (
            fit.normalized_residual_map.native == np.array([[0.0, 0.0], [0.0, 0.0]])
        ).all()

        assert (fit.chi_squared_map.slim == np.array([0.0, 0.0, 0.0, 0.0])).all()
        assert (fit.chi_squared_map.native == np.array([[0.0, 0.0], [0.0, 0.0]])).all()

        assert fit.chi_squared == 0.0
        assert fit.reduced_chi_squared == 0.0
        assert fit.noise_normalization == np.sum(np.log(2 * np.pi * noise_map ** 2.0))
        assert fit.log_likelihood == -0.5 * (fit.chi_squared + fit.noise_normalization)

    def test__image_and_model_are_different__inclue_masking__check_values_are_correct(
        self,
    ):

        mask = Mask2D.manual(
            mask=[[False, False], [True, False]], sub_size=1, pixel_scales=(1.0, 1.0)
        )

        data = Array2D.manual_mask(array=[1.0, 2.0, 4.0], mask=mask)
        noise_map = Array2D.manual_mask(array=[2.0, 2.0, 2.0], mask=mask)

        imaging = Imaging(image=data, noise_map=noise_map)

        masked_imaging = MaskedImaging(imaging=imaging, mask=mask)

        model_image = Array2D.manual_mask(array=[1.0, 2.0, 3.0], mask=mask)

        fit = FitImaging(
            masked_imaging=masked_imaging,
            model_image=model_image,
            use_mask_in_fit=False,
        )

        assert (fit.mask == np.array([[False, False], [True, False]])).all()

        assert (fit.image.slim == np.array([1.0, 2.0, 4.0])).all()
        assert (fit.image.native == np.array([[1.0, 2.0], [0.0, 4.0]])).all()

        assert (fit.noise_map.slim == np.array([2.0, 2.0, 2.0])).all()
        assert (fit.noise_map.native == np.array([[2.0, 2.0], [0.0, 2.0]])).all()

        assert (fit.signal_to_noise_map.slim == np.array([0.5, 1.0, 2.0])).all()
        assert (
            fit.signal_to_noise_map.native == np.array([[0.5, 1.0], [0.0, 2.0]])
        ).all()

        assert (fit.model_image.slim == np.array([1.0, 2.0, 3.0])).all()
        assert (fit.model_image.native == np.array([[1.0, 2.0], [0.0, 3.0]])).all()

        assert (fit.residual_map.slim == np.array([0.0, 0.0, 1.0])).all()
        assert (fit.residual_map.native == np.array([[0.0, 0.0], [0.0, 1.0]])).all()

        assert (fit.normalized_residual_map.slim == np.array([0.0, 0.0, 0.5])).all()
        assert (
            fit.normalized_residual_map.native == np.array([[0.0, 0.0], [0.0, 0.5]])
        ).all()

        assert (fit.chi_squared_map.slim == np.array([0.0, 0.0, 0.25])).all()
        assert (fit.chi_squared_map.native == np.array([[0.0, 0.0], [0.0, 0.25]])).all()

        assert fit.chi_squared == 0.25
        assert fit.reduced_chi_squared == 0.25 / 3.0
        assert fit.noise_normalization == np.sum(np.log(2 * np.pi * noise_map ** 2.0))
        assert fit.log_likelihood == -0.5 * (fit.chi_squared + fit.noise_normalization)

    def test__image_and_model_are_identical__inversion_included__changes_certain_properties(
        self,
    ):

        mask = Mask2D.manual(
            mask=[[False, False], [False, False]], sub_size=1, pixel_scales=(1.0, 1.0)
        )

        data = Array2D.manual_mask(array=[1.0, 2.0, 3.0, 4.0], mask=mask)
        noise_map = Array2D.manual_mask(array=[2.0, 2.0, 2.0, 2.0], mask=mask)

        imaging = Imaging(image=data, noise_map=noise_map)

        masked_imaging = MaskedImaging(imaging=imaging, mask=mask)

        model_image = Array2D.manual_mask(array=[1.0, 2.0, 3.0, 4.0], mask=mask)

        inversion = mock.MockFitInversion(
            regularization_term=2.0,
            log_det_curvature_reg_matrix_term=3.0,
            log_det_regularization_matrix_term=4.0,
        )

        fit = FitImaging(
            masked_imaging=masked_imaging,
            model_image=model_image,
            inversion=inversion,
            use_mask_in_fit=False,
        )

        assert fit.chi_squared == 0.0
        assert fit.reduced_chi_squared == 0.0
        assert fit.noise_normalization == np.sum(np.log(2 * np.pi * noise_map ** 2.0))
        assert fit.log_likelihood == -0.5 * (fit.chi_squared + fit.noise_normalization)

        assert fit.log_likelihood_with_regularization == -0.5 * (
            fit.chi_squared + 2.0 + fit.noise_normalization
        )
        assert fit.log_evidence == -0.5 * (
            fit.chi_squared + 2.0 + 3.0 - 4.0 + fit.noise_normalization
        )
        assert fit.figure_of_merit == fit.log_evidence


