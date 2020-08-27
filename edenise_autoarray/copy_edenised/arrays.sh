echo "Copying autoarray/structures -> VIS_AutoArray_Array"

AUTO_SRC_PATH_ARRAY=$AUTOARRAY_EDEN_PATH"/autoarray/structures"
VIS_SRC_PATH_ARRAY=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Array/python/VIS_AutoArray_Array"

cp -r $AUTO_SRC_PATH_ARRAY/abstract_structure.py $VIS_SRC_PATH_ARRAY/
cp -r $AUTO_SRC_PATH_ARRAY/region.py $VIS_SRC_PATH_ARRAY/
cp -r $AUTO_SRC_PATH_ARRAY/kernel.py $VIS_SRC_PATH_ARRAY/
cp -r $AUTO_SRC_PATH_ARRAY/arrays/abstract_array.py $VIS_SRC_PATH_ARRAY/
cp -r $AUTO_SRC_PATH_ARRAY/arrays/arrays.py $VIS_SRC_PATH_ARRAY/
cp -r $AUTO_SRC_PATH_ARRAY/arrays/values.py $VIS_SRC_PATH_ARRAY/

AUTO_TEST_PATH_ARRAY=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/structures"
VIS_TEST_PATH_ARRAY=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Array/tests/python"

cp -r $AUTO_TEST_PATH_ARRAY/test_region.py $VIS_TEST_PATH_ARRAY/
cp -r $AUTO_TEST_PATH_ARRAY/arrays/test_abstract_array.py $VIS_TEST_PATH_ARRAY/
cp -r $AUTO_TEST_PATH_ARRAY/arrays/test_arrays.py $VIS_TEST_PATH_ARRAY/
cp -r $AUTO_TEST_PATH_ARRAY/arrays/test_values.py $VIS_TEST_PATH_ARRAY/

cp -r $AUTO_TEST_PATH_ARRAY/arrays/files $VIS_TEST_PATH_ARRAY/

rm -rf $VIS_TEST_PATH_ARRAY/__init__.py