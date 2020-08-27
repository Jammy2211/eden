echo "Copying autoarray/mask -> VIS_AutoArray_Mask"

AUTO_SRC_PATH_MASK=$AUTOARRAY_EDEN_PATH"/autoarray/mask"
VIS_SRC_PATH_MASK=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Mask/python/VIS_AutoArray_Mask"

cp -r $AUTO_SRC_PATH_MASK/abstract_mask.py $VIS_SRC_PATH_MASK/
cp -r $AUTO_SRC_PATH_MASK/geometry.py $VIS_SRC_PATH_MASK/
cp -r $AUTO_SRC_PATH_MASK/mask.py $VIS_SRC_PATH_MASK/
cp -r $AUTO_SRC_PATH_MASK/regions.py $VIS_SRC_PATH_MASK/

AUTO_TEST_PATH_MASK=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/mask"
VIS_TEST_PATH_MASK=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Mask/tests/python"

cp -r $AUTO_TEST_PATH_MASK/test_abstract_mask.py $VIS_TEST_PATH_MASK/
cp -r $AUTO_TEST_PATH_MASK/test_geometry.py $VIS_TEST_PATH_MASK/
cp -r $AUTO_TEST_PATH_MASK/test_mask.py $VIS_TEST_PATH_MASK/
cp -r $AUTO_TEST_PATH_MASK/test_regions.py $VIS_TEST_PATH_MASK/

cp -r $AUTO_TEST_PATH_MASK/files $VIS_TEST_PATH_MASK/

rm -rf $VIS_TEST_PATH_MASK/__init__.py