echo "Copying autocti/pipeline/phase/abstract -> VIS_CTI_AutoCTI_Phase_Abstract"

AUTO_SRC_PATH_PHASE=$AUTOCTI_EDEN_PATH"/autocti/pipeline/phase/abstract"
VIS_SRC_PATH_PHASE=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Phase_Abstract/python/VIS_CTI_AutoCTI_Phase_Abstract"

cp -r $AUTOCTI_EDEN_PATH/autocti/pipeline/phase/settings.py $VIS_SRC_PATH_PHASE/
cp -r $AUTO_SRC_PATH_PHASE/*.py $VIS_SRC_PATH_PHASE/

AUTO_TEST_PATH_PHASE=$AUTOCTI_EDEN_PATH/"test_autocti/unit/pipeline_phase/abstract"
VIS_TEST_PATH_PHASE=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Phase_Abstract/tests/python"

cp -r $AUTOCTI_EDEN_PATH/test_autocti/unit/pipeline/phase/test_settings.py $VIS_TEST_PATH_PHASE/
cp -r $AUTO_SRC_PATH_PHASE/*.py $VIS_TEST_PATH_PHASE/

rm -rf $VIS_TEST_PATH_PHASE/__init__.py