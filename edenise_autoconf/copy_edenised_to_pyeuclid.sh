echo
echo "------ copy_edenised_to_pyeuclid.sh ------"
echo

AUTO_EDEN_PATH=$EDEN_PATH"/autoconf_eden"
VIS_PATH=$PYEUCLID_PATH"/VIS_AutoConf"

AUTO_SRC_PATH=$AUTO_EDEN_PATH"/autoconf"
AUTO_TEST_PATH=$AUTO_EDEN_PATH"/test_autoconf"

VIS_SRC_PATH=$VIS_PATH"/VIS_Conf/python/VIS_Conf"
VIS_TEST_PATH=$VIS_PATH"/VIS_Conf/tests/python"

echo "Copying source code from" $AUTO_EDEN_PATH "to "$VIS_AutoConf
cp -r $AUTO_SRC_PATH/* $VIS_SRC_PATH/

echo "Copying exc.py, mock.py and conftest.py files from autofit to VIS_AutoFit main path"
cp -r $AUTO_SRC_PATH/exc.py $VIS_PATH/VIS_Conf/python/VIS_Conf/
cp -r $AUTO_TEST_PATH/mock_real.py $VIS_PATH/VIS_Conf/python/VIS_Conf/

echo "Copying tests from" $AUTO_EDEN_PATH "to "$VIS_AutoConf
cp -r $AUTO_TEST_PATH/unit/* $VIS_TEST_PATH/

echo "moving autoconf json_prior files out of their sub-package to the main VIS_AutoConf package"
cp -r $VIS_SRC_PATH/json_prior/config.py $VIS_SRC_PATH/config.py
cp -r $VIS_SRC_PATH/json_prior/converter.py $VIS_SRC_PATH/converter.py
cp -r $VIS_TEST_PATH/json_prior/* $VIS_TEST_PATH/

echo "Removed annoying tests"
rm $VIS_TEST_PATH/test_conversion.py
rm $VIS_TEST_PATH/test_json_config.py
rm $VIS_TEST_PATH/test_generation.py

echo "Removing old json prior config files"
rm -r  $VIS_SRC_PATH/json_prior
rm -r  $VIS_TEST_PATH/json_prior