echo "map autofit.search.non_linear -> VIS_AutoFit_Non_Linear"

sed -i 's/from autofit.non_linear.mcmcfrom VIS_AutoFit_NonLinear/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.non_linear.mcmc/from VIS_AutoFit_NonLinear/g' $VIS_AUTOFIT_PATH/*/*/*/*.py
sed -i 's/from autofit.non_linear.mock/from VIS_AutoFit_NonLinear/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.non_linear.mock/from VIS_AutoFit_NonLinear/g' $VIS_AUTOFIT_PATH/*/*/*/*.py
sed -i 's/from autofit.non_linear.nest/from VIS_AutoFit_NonLinear/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.non_linear.nest/from VIS_AutoFit_NonLinear/g' $VIS_AUTOFIT_PATH/*/*/*/*.py
sed -i 's/from autofit.non_linear/from VIS_AutoFit_NonLinear/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.non_linear/from VIS_AutoFit_NonLinear/g' $VIS_AUTOFIT_PATH/*/*/*/*.py