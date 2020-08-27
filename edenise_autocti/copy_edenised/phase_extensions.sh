echo "Copying autocti/fit -> VIS_CTI_Phase_Extensions"

AUTO_SRC_PATH_PHASE=$AUTOCTI_EDEN_PATH"/autocti/pipeline/phase/extensions"
VIS_SRC_PATH_PHASE=$VIS_AUTOCTI_PATH"/VIS_CTI_Phase_Extensions/python/VIS_CTI_Phase_Extensions"

cp -r $AUTO_SRC_PATH_PHASE/*.py $VIS_SRC_PATH_PHASE/

AUTO_TEST_PATH_PHASE=$AUTOCTI_EDEN_PATH/"test_autocti/unit/pipeline/phase/extensions"
VIS_TEST_PATH_PHASE=$VIS_AUTOCTI_PATH"/VIS_CTI_Phase_Extensions/tests/python"

cp -r $AUTO_TEST_PATH_PHASE/*.py $VIS_TEST_PATH_PHASE/
rm -rf $VIS_VIS_TEST_PATH_PHASE/__init__.py