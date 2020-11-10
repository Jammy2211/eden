echo "mock imports"
sed -i 's/from autocti import mock/from VIS_CTI_AutoCTI_Mock import mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti import mock/from VIS_CTI_AutoCTI_Mock import mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.mock/from VIS_CTI_AutoCTI_Mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.mock/from VIS_CTI_AutoCTI_Mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py