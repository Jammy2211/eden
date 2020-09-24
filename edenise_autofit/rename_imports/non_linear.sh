echo "map autofit.search.non_linear -> VIS_CTI_AutoFit_Non_Linear"

sed -i 's/from autofit.non_linear.mcmcfrom VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.non_linear.mcmc/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autofit.non_linear.mock/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.non_linear.mock/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autofit.non_linear.nest/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.non_linear.nest/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autofit.non_linear/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.non_linear/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*/*/*/*.py