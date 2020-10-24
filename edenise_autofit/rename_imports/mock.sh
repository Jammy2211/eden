echo "Renaming extra test imports (exc / mock)"

sed -i 's/from VIS_CTI_AutoConf_Conf.tests.mock/from VIS_CTI_AutoFit_Mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from VIS_CTI_AutoConf_Conf.tests.mock/from VIS_CTI_AutoFit_Mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autofit.mock import mock/from VIS_CTI_AutoFit_Mock import mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.mock import mock/from VIS_CTI_AutoFit_Mock import mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py