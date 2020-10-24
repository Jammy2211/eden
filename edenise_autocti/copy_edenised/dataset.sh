echo "Copying autocti/dataset -> VIS_CTI_AutoCTI_Dataset"

AUTO_SRC_PATH_DATASET=$AUTOCTI_EDEN_PATH"/autocti/dataset"
VIS_SRC_PATH_DATASET=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Dataset/python/VIS_CTI_AutoCTI_Dataset"
AUTO_TEST_PATH_DATASET=$AUTOCTI_EDEN_PATH/"test_autocti/unit/dataset"
VIS_TEST_PATH_DATASET=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Dataset/tests/python"

cp -r $AUTOCTI_EDEN_PATH/autocti/dataset/*.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Dataset/python/VIS_CTI_AutoCTI_Dataset/
cp -r $AUTOCTI_EDEN_PATH/test_autocti/unit/dataset/* $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Dataset/tests/python/
rm $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Dataset/python/VIS_CTI_AutoCTI_Dataset/warm_pixels.py
rm $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Dataset/tests/python/test_warm_pixels.py
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Dataset/tests/python/__init__.py