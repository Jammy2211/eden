echo "Copying autocti/util -> VIS_CTI_AutoCTI_Util"

AUTO_SRC_PATH_UTIL=$AUTOCTI_EDEN_PATH"/autocti/util"
VIS_SRC_PATH_UTIL=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Util/python/VIS_CTI_AutoCTI_Util"

# cp -r $AUTO_SRC_PATH_UTIL/*.py $VIS_SRC_PATH_UTIL/

AUTO_TEST_PATH_UTIL=$AUTOCTI_EDEN_PATH/"test_autocti/unit/util"
VIS_TEST_PATH_UTIL=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Util/tests/python"

# cp -r $AUTO_TEST_PATH_UTIL/* $VIS_TEST_PATH_UTIL/

rm -rf $VIS_TEST_PATH_UTIL/__init__.py