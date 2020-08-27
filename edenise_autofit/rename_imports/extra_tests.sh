echo "Renaming extra test imports (exc / mock / conftest)"

sed -i 's/from VIS_Conf.tests.mock/from VIS_AutoFit_Tools.mock/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from VIS_Conf.tests.mock/from VIS_AutoFit_Tools.mock/g' $VIS_AUTOFIT_PATH/*/*/*/*.py
sed -i 's/from test_autofit import mock/from VIS_AutoFit_Tools import mock/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from test_autofit import mock/from VIS_AutoFit_Tools import mock/g' $VIS_AUTOFIT_PATH/*/*/*/*.py
sed -i 's/from test_autofit.mock/from VIS_AutoFit_Tools.mock/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from test_autofit.mock/from VIS_AutoFit_Tools.mock/g' $VIS_AUTOFIT_PATH/*/*/*/*.py