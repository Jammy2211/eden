echo "Renaming extra test imports (exc / mock / conftest)"

sed -i 's/from VIS_CTI_AutoConf_Conf.tests.mock/from VIS_CTI_AutoFit_Tools.mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from VIS_CTI_AutoConf_Conf.tests.mock/from VIS_CTI_AutoFit_Tools.mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from test_autofit import mock/from VIS_CTI_AutoFit_Tools import mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autofit import mock/from VIS_CTI_AutoFit_Tools import mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from test_autofit.mock/from VIS_CTI_AutoFit_Tools.mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autofit.mock/from VIS_CTI_AutoFit_Tools.mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py