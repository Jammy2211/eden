echo "Correcting autocti.autocti imports"
sed -i 's/from autocti.autocti/from autocti/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "from autoconf -> from VIS_Conf"

sed -i 's/from autoconf/from VIS_Conf/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoconf/from VIS_Conf/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "exc imports"
sed -i 's/from autocti import exc/from VIS_CTI_Util import exc/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti import exc/from VIS_CTI_Util import exc/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "mock imports"
sed -i 's/from test_autocti import mock/from VIS_CTI_Util import mock/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from test_autocti import mock/from VIS_CTI_Util import mock/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from test_autocti.mock/from VIS_CTI_Util.mock/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from test_autocti.mock/from VIS_CTI_Util.mock/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "from autoconf -> from VIS_AutoFit_Conf"
sed -i 's/from autoconf/from VIS_AutoFit_Conf/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoconf/from VIS_AutoFit_Conf/g' $VIS_AUTOCTI_PATH/*/*/*/*.py