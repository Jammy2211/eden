echo "map autofit.mapper.prior_model -> VIS_AutoFit_PriorModel"

sed -i 's/from autofit.mapper.prior_model/from VIS_AutoFit_PriorModel/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.mapper.prior_model/from VIS_AutoFit_PriorModel/g' $VIS_AUTOFIT_PATH/*/*/*/*.py