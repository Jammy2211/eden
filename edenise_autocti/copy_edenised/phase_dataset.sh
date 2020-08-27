echo "Copying autocti/pipeline/phase/dataset -> VIS_CTI_Phase_Dataset"

AUTO_SRC_PATH_PHASE=$AUTOCTI_EDEN_PATH"/autocti/pipeline/phase/dataset"
VIS_SRC_PATH_PHASE=$VIS_AUTOCTI_PATH"/VIS_CTI_Phase_Dataset/python/VIS_CTI_Phase_Dataset"

cp -r $AUTO_SRC_PATH_PHASE/*.py $VIS_SRC_PATH_PHASE/

AUTO_TEST_PATH_PHASE=$AUTOCTI_EDEN_PATH/"test_autocti/unit/pipeline/phase/dataset"
VIS_TEST_PATH_PHASE=$VIS_AUTOCTI_PATH"/VIS_CTI_Phase_Dataset/tests/python"

cp -r $AUTO_TEST_PATH_PHASE/*.py $VIS_TEST_PATH_PHASE/
rm -rf $VIS_TEST_PATH_PHASE/__init__.py