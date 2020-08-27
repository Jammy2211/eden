echo "map autofit.mapper.prior -> VIS_AutoFit_Prior"

sed -i 's/from autofit.mapper.prior import Prior/from VIS_AutoFit_Prior.prior import Prior/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.mapper.prior import Prior/from VIS_AutoFit_Prior.prior import Prior/g' $VIS_AUTOFIT_PATH/*/*/*/*.py
sed -i 's/from autofit.mapper.prior/from VIS_AutoFit_Prior/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.mapper.prior/from VIS_AutoFit_Prior/g' $VIS_AUTOFIT_PATH/*/*/*/*.py
sed -i 's/from autofit.mapper import prior/import VIS_AutoFit_Prior as prior/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.mapper import prior/import VIS_AutoFit_Prior as prior/g' $VIS_AUTOFIT_PATH/*/*/*/*.py