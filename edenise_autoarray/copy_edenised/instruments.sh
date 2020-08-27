echo "Copying autoarray/instruments -> VIS_AutoArray_Instruments"

AUTO_SRC_PATH_INSTRUMENTS=$AUTOARRAY_EDEN_PATH"/autoarray/instruments"
VIS_SRC_PATH_INSTRUMENTS=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Instruments/python/VIS_AutoArray_Instruments"

cp -r $AUTO_SRC_PATH_INSTRUMENTS/euclid.py $VIS_SRC_PATH_INSTRUMENTS/

cp $AUTO_SRC_PATH_INSTRUMENTS/__init__.py $VIS_SRC_PATH_INSTRUMENTS/

AUTO_TEST_PATH_INSTRUMENTS=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/instruments"
VIS_TEST_PATH_INSTRUMENTS=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Instruments/tests/python"

cp -r $AUTO_TEST_PATH_INSTRUMENTS/test_euclid.py $VIS_TEST_PATH_INSTRUMENTS/

rm -rf $VIS_TEST_PATH_INSTRUMENTS/__init__.py