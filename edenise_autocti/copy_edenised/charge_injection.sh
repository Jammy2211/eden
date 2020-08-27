echo "Copying autocti/charge_injection -> VIS_CTI_CI"

AUTO_SRC_PATH_CI=$AUTOCTI_EDEN_PATH"/autocti/charge_injection"
VIS_SRC_PATH_CI=$VIS_AUTOCTI_PATH"/VIS_CTI_CI/python/VIS_CTI_CI"

cp -r $AUTO_SRC_PATH_CI/*.py $VIS_SRC_PATH_CI/

AUTO_TEST_PATH_CI=$AUTOCTI_EDEN_PATH/"test_autocti/unit/charge_injection"
VIS_TEST_PATH_CI=$VIS_AUTOCTI_PATH"/VIS_CTI_CI/tests/python"

cp -r $AUTO_TEST_PATH_CI/* $VIS_TEST_PATH_CI

rm -rf $VIS_TEST_PATH_CI/__init__.py