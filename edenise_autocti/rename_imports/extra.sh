echo "Correcting autocti.autocti imports"
sed -i 's/from autocti.autocti/from autocti/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "from autoconf -> from VIS_CTI_AutoConf_Conf"

sed -i 's/from autoconf/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoconf/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "exc imports"
sed -i 's/from autocti import exc/from VIS_CTI_AutoCTI_Util import exc/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti import exc/from VIS_CTI_AutoCTI_Util import exc/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "mock imports"
sed -i 's/from test_autocti import mock/from VIS_CTI_AutoCTI_Util import mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autocti import mock/from VIS_CTI_AutoCTI_Util import mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from test_autocti.mock/from VIS_CTI_AutoCTI_Util.mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autocti.mock/from VIS_CTI_AutoCTI_Util.mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "from autoconf -> from VIS_CTI_AutoConf_Conf"
sed -i 's/from autoconf/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoconf/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*/*/*/*.py