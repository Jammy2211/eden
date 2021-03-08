import numpy as np

from VIS_CTI_AutoArray_Mask import mask_2d
from VIS_CTI_AutoArray_Array import array_2d
from VIS_CTI_AutoArray_Grid import grid_2d
from VIS_CTI_AutoArray_Grid import grid_2d_iterate
from VIS_CTI_AutoArray_Grid import grid_2d_irregular
from VIS_CTI_AutoArray_Frame import abstract_frame
from VIS_CTI_AutoArray_Frame import frames
from VIS_CTI_AutoArray_Array import kernel_2d
from VIS_CTI_AutoArray_Dataset import imaging
from VIS_CTI_AutoArray_Operators import convolver
from VIS_CTI_AutoArray_Fit import fit
 

def make_mask_7x7():

    mask = np.array(
        [
            [True, True, True, True, True, True, True],
            [True, True, True, True, True, True, True],
            [True, True, False, False, False, True, True],
            [True, True, False, False, False, True, True],
            [True, True, False, False, False, True, True],
            [True, True, True, True, True, True, True],
            [True, True, True, True, True, True, True],
        ]
    )

    return mask_2d.Mask2D.manual(mask=mask, pixel_scales=(1.0, 1.0), sub_size=1)


def make_sub_mask_7x7():
    mask = np.array(
        [
            [True, True, True, True, True, True, True],
            [True, True, True, True, True, True, True],
            [True, True, False, False, False, True, True],
            [True, True, False, False, False, True, True],
            [True, True, False, False, False, True, True],
            [True, True, True, True, True, True, True],
            [True, True, True, True, True, True, True],
        ]
    )

    return mask_2d.Mask2D.manual(mask=mask, sub_size=2, pixel_scales=(1.0, 1.0))


def make_mask_7x7_1_pix():
    mask = np.array(
        [
            [True, True, True, True, True, True, True],
            [True, True, True, True, True, True, True],
            [True, True, True, True, True, True, True],
            [True, True, True, False, True, True, True],
            [True, True, True, True, True, True, True],
            [True, True, True, True, True, True, True],
            [True, True, True, True, True, True, True],
        ]
    )

    return mask_2d.Mask2D.manual(mask=mask, pixel_scales=(1.0, 1.0))


def make_blurring_mask_7x7():
    blurring_mask = np.array(
        [
            [True, True, True, True, True, True, True],
            [True, False, False, False, False, False, True],
            [True, False, True, True, True, False, True],
            [True, False, True, True, True, False, True],
            [True, False, True, True, True, False, True],
            [True, False, False, False, False, False, True],
            [True, True, True, True, True, True, True],
        ]
    )

    return mask_2d.Mask2D.manual(mask=blurring_mask, pixel_scales=(1.0, 1.0))


### arrays ###


def make_array_7x7():
    return array_2d.Array2D.ones(shape_native=(7, 7), pixel_scales=(1.0, 1.0))


def make_scans_7x7():
    return abstract_frame.Scans(
        serial_overscan=(0, 6, 6, 7),
        serial_prescan=(0, 7, 0, 1),
        parallel_overscan=(6, 7, 1, 6),
    )


def make_frame_7x7():
    return frames.Frame2D.ones(
        shape_native=(7, 7), pixel_scales=(1.0, 1.0), scans=make_scans_7x7()
    )


# GRIDS #


def make_grid_7x7():
    return grid_2d.Grid2D.from_mask(mask=make_mask_7x7())


def make_sub_grid_7x7():
    return grid_2d.Grid2D.from_mask(mask=make_sub_mask_7x7())


def make_grid_iterate_7x7():
    return grid_2d_iterate.Grid2DIterate.from_mask(
        mask=make_mask_7x7(), fractional_accuracy=0.9999, sub_steps=[2, 4, 8, 16]
    )


def make_sub_grid_7x7_simple():
    sub_grid_7x7 = make_sub_grid_7x7()
    sub_grid_7x7[0] = np.array([1.0, 1.0])
    sub_grid_7x7[1] = np.array([1.0, 0.0])
    sub_grid_7x7[2] = np.array([1.0, 1.0])
    sub_grid_7x7[3] = np.array([1.0, 0.0])
    return sub_grid_7x7


def make_blurring_grid_7x7():
    return grid_2d.Grid2D.from_mask(mask=make_blurring_mask_7x7())


# CONVOLVERS #


def make_convolver_7x7():
    return convolver.Convolver(mask=make_mask_7x7(), kernel=make_psf_3x3())


def make_image_7x7():
    return array_2d.Array2D.ones(shape_native=(7, 7), pixel_scales=(1.0, 1.0))


def make_psf_3x3():
    return kernel_2d.Kernel2D.ones(shape_native=(3, 3), pixel_scales=(1.0, 1.0))


def make_psf_no_blur_3x3():
    return kernel_2d.Kernel2D.no_blur(pixel_scales=(1.0, 1.0))


def make_noise_map_7x7():
    return array_2d.Array2D.full(fill_value=2.0, shape_native=(7, 7), pixel_scales=(1.0, 1.0))


def make_grid_irregular_7x7():
    return grid_2d_irregular.Grid2DIrregular(grid=[(0.1, 0.1), (0.2, 0.2)])


def make_grid_irregular_7x7_list():
    return [
        grid_2d_irregular.Grid2DIrregular(grid=[(0.1, 0.1), (0.2, 0.2)]),
        grid_2d_irregular.Grid2DIrregular(grid=[(0.3, 0.3)]),
    ]


def make_imaging_7x7():
    return imaging.Imaging(
        image=make_image_7x7(),
        psf=make_psf_3x3(),
        noise_map=make_noise_map_7x7(),
        name="mock_imaging_7x7",
    )


def make_imaging_no_blur_7x7():
    return imaging.Imaging(
        image=make_image_7x7(),
        psf=make_psf_no_blur_3x3(),
        noise_map=make_noise_map_7x7(),
        name="mock_imaging_7x7",
    )


def make_visibilities_mask_7():
    return np.full(fill_value=False, shape=(7,))


def make_uv_wavelengths_7():
    return np.array(
        [
            [-55636.4609375, 171376.90625],
            [-6903.21923828, 51155.578125],
            [-63488.4140625, 4141.28369141],
            [55502.828125, 47016.7265625],
            [54160.75390625, -99354.1796875],
            [-9327.66308594, -95212.90625],
            [0.0, 0.0],
        ]
    )

### MASKED DATA ###


def make_masked_imaging_7x7():
    return imaging.MaskedImaging(
        imaging=make_imaging_7x7(),
        mask=make_sub_mask_7x7(),
        settings=imaging.SettingsMaskedImaging(sub_size=1),
    )


def make_masked_imaging_no_blur_7x7():
    return imaging.MaskedImaging(
        imaging=make_imaging_no_blur_7x7(),
        mask=make_sub_mask_7x7(),
        settings=imaging.SettingsMaskedImaging(sub_size=1),
    )

def make_masked_imaging_fit_x1_plane_7x7():
    return fit.FitImaging(
        masked_imaging=make_masked_imaging_7x7(),
        model_image=5.0 * make_masked_imaging_7x7().image,
        use_mask_in_fit=False,
    )


### EUCLID DATA ####


def make_euclid_data():
    return np.zeros((2086, 2128))


### ACS DATA ####


def make_acs_ccd():
    return np.zeros((2068, 4144))


def make_acs_quadrant():
    return np.zeros((2068, 2072))
