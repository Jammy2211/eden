echo "Copying autocti/dataset -> VIS_CTI_Dataset"

AUTO_SRC_PATH_DATASET=$AUTOCTI_EDEN_PATH"/autocti/dataset"
VIS_SRC_PATH_DATASET=$VIS_AUTOCTI_PATH"/VIS_CTI_Dataset/python/VIS_CTI_Dataset"
AUTO_TEST_PATH_DATASET=$AUTOCTI_EDEN_PATH/"test_autocti/unit/dataset"
VIS_TEST_PATH_DATASET=$VIS_AUTOCTI_PATH"/VIS_CTI_Dataset/tests/python"

cp -r $AUTOCTI_EDEN_PATH/autocti/dataset/*.py $VIS_AUTOCTI_PATH/VIS_CTI_Dataset/python/VIS_CTI_Dataset/
cp -r $AUTOCTI_EDEN_PATH/test_autocti/unit/dataset/* $VIS_AUTOCTI_PATH/VIS_CTI_Dataset/tests/python/
rm -rf $VIS_AUTOCTI_PATH/VIS_CTI_Dataset/tests/python/__init__.py