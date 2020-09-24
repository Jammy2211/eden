echo "Copying autocti/pipeline/phase/ci_imaging -> VIS_CTI_AutoCTI_Phase_CI"

AUTO_SRC_PATH_PHASE=$AUTOCTI_EDEN_PATH"/autocti/pipeline/phase/ci_imaging"
VIS_SRC_PATH_PHASE=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Phase_CI/python/VIS_CTI_AutoCTI_Phase_CI"

cp -r $AUTO_SRC_PATH_PHASE/*.py $VIS_SRC_PATH_PHASE/

AUTO_TEST_PATH_PHASE=$AUTOCTI_EDEN_PATH/"test_autocti/unit/pipeline/phase/ci_imaging"
VIS_TEST_PATH_PHASE=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Phase_CI/tests/python"

cp -r $AUTO_TEST_PATH_PHASE/*.py $VIS_TEST_PATH_PHASE/

rm -rf $VIS_TEST_PATH_PHASE/__init__.py