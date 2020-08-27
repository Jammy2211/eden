echo "autofit exc imports"
sed -i 's/from autofit import exc/from VIS_AutoFit_Tools import exc/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autofit import exc/from VIS_AutoFit_Tools import exc/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "autofit mock imports"
sed -i 's/from test_autofit import mock/from VIS_AutoFit_Tools import mock/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from test_autofit import mock/from VIS_AutoFit_Tools import mock/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from test_autofit.mock/from VIS_AutoFit_Tools.mock/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from test_autofit.mock/from VIS_AutoFit_Tools.mock/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "map from autofit.tools -> VIS_AutoFit_Tools"
sed -i 's/from autofit.tools/from VIS_AutoFit_Tools/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autofit.tools/from VIS_AutoFit_Tools/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "map autofit.mapper.prior_model -> VIS_AutoFit_PriorModel"
sed -i 's/from autofit.mapper.prior_model/from VIS_AutoFit_PriorModel/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autofit.mapper.prior_model/from VIS_AutoFit_PriorModel/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "map autofit.mapper -> VIS_AutoFit_Mapper"
sed -i 's/from autofit.mapper/from VIS_AutoFit_Mapper/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autofit.mapper/from VIS_AutoFit_Mapper/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "map autofit.search.non_linear -> VIS_AutoFit_Non_Linear"
sed -i 's/from autofit.non_linear.nest/from VIS_AutoFit_NonLinear/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autofit.non_linear.mock/from VIS_AutoFit_NonLinear/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autofit.non_linear.mock/from VIS_AutoFit_NonLinear/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autofit.non_linear/from VIS_AutoFit_NonLinear/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autofit.non_linear/from VIS_AutoFit_NonLinear/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
