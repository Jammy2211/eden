echo "Copying arctic -> VIS_CTI_AutoCTI_Arctic_New"

AUTO_SRC_PATH_ARCTIC=$PYAUTO_PATH"/arctic/arcticpy"
VIS_SRC_PATH_ARCTIC=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Arctic_New/python/VIS_CTI_AutoCTI_Arctic_New"

cp -r $AUTO_SRC_PATH_ARCTIC/*.py $VIS_SRC_PATH_ARCTIC/

AUTO_TEST_PATH_ARCTIC=$PYAUTO_PATH"/arctic/test_arcticpy"
VIS_TEST_PATH_ARCTIC=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoCTI_Arctic_New/tests/python"

# cp -r $AUTO_TEST_PATH_ARCTIC/* $VIS_TEST_PATH_ARCTIC

rm -rf $VIS_TEST_PATH_ARCTIC/__init__.py