echo "Copying autoarray/operators -> VIS_AutoArray_Operators"

AUTO_SRC_PATH_OPERATORS=$AUTOARRAY_EDEN_PATH"/autoarray/operators"
VIS_SRC_PATH_OPERATORS=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Operators/python/VIS_AutoArray_Operators"

cp -r $AUTO_SRC_PATH_OPERATORS/convolver.py $VIS_SRC_PATH_OPERATORS/

cp $AUTO_SRC_PATH_OPERATORS/__init__.py $VIS_SRC_PATH_OPERATORS/

AUTO_TEST_PATH_OPERATORS=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/operators"
VIS_TEST_PATH_OPERATORS=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Operators/tests/python"

cp -r $AUTO_TEST_PATH_OPERATORS/test_convolver.py $VIS_TEST_PATH_OPERATORS/

cp -r $AUTO_TEST_PATH_OPERATORS/files $VIS_TEST_PATH_OPERATORS/

rm -rf $VIS_TEST_PATH_OPERATORS/__init__.py