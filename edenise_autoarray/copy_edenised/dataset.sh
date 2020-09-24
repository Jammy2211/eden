echo "Copying autoarray/dataset -> VIS_CTI_AutoArray_Dataset"

AUTO_SRC_PATH_DATASET=$AUTOARRAY_EDEN_PATH"/autoarray/dataset"
VIS_SRC_PATH_DATASET=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoArray_Dataset/python/VIS_CTI_AutoArray_Dataset"

cp -r $AUTO_SRC_PATH_DATASET/abstract_dataset.py $VIS_SRC_PATH_DATASET/
cp -r $AUTO_SRC_PATH_DATASET/imaging.py $VIS_SRC_PATH_DATASET/
cp -r $AUTO_SRC_PATH_DATASET/preprocess.py $VIS_SRC_PATH_DATASET/

cp $AUTO_SRC_PATH_DATASET/__init__.py $VIS_SRC_PATH_DATASET/

AUTO_TEST_PATH_DATASET=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/dataset"
VIS_TEST_PATH_DATASET=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoArray_Dataset/tests/python"

cp -r $AUTO_TEST_PATH_DATASET/test_abstract_dataset.py $VIS_TEST_PATH_DATASET/
cp -r $AUTO_TEST_PATH_DATASET/test_imaging.py $VIS_TEST_PATH_DATASET/
cp -r $AUTO_TEST_PATH_DATASET/test_preprocess.py $VIS_TEST_PATH_DATASET/

cp -r $AUTO_TEST_PATH_DATASET/files $VIS_TEST_PATH_DATASET/

rm -rf $VIS_TEST_PATH_DATASET/__init__.py