echo "Copying autoarray/fit -> VIS_AutoArray_Fit"

AUTO_SRC_PATH_FIT=$AUTOARRAY_EDEN_PATH"/autoarray/fit"
VIS_SRC_PATH_FIT=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Fit/python/VIS_AutoArray_Fit"

cp -r $AUTO_SRC_PATH_FIT/* $VIS_SRC_PATH_FIT/

AUTO_TEST_PATH_FIT=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/fit"
VIS_TEST_PATH_FIT=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Fit/tests/python"

rm -rf $VIS_TEST_PATH_FIT/__init__.py