echo "map autofit.mapper.prior_model -> VIS_CTI_AutoFit_PriorModel"

sed -i 's/from autofit.mapper.prior_model/from VIS_CTI_AutoFit_PriorModel/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.mapper.prior_model/from VIS_CTI_AutoFit_PriorModel/g' $PYEUCLID_CTI_PATH/*/*/*/*.py