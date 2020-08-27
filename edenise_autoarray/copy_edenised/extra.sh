echo "Copying exc.py, mock.py and conftest.py files from autoarray to VIS_AutoArray main path"
cp -r $AUTOARRAY_EDEN_PATH/autoarray/exc.py $VIS_AUTOARRAY_PATH/VIS_AutoArray_Util/python/VIS_AutoArray_Util/exc.py
# cp -r $AUTOARRAY_EDEN_PATH/test_autoarray/mock.py $VIS_AUTOARRAY_PATH/mock.py
# cp -r $AUTOARRAY_EDEN_PATH/test_autoarray/unit/conftest.py $VIS_AUTOARRAY_PATH/conftest.py

echo "Copying default configs from autoarray unit test directory to VIS_AutoArray_Conf tests directory"
mkdir $VIS_AUTOARRAY_PATH/VIS_AutoArray_Util/tests/python/files
mkdir $VIS_AUTOARRAY_PATH/VIS_AutoArray_Util/tests/python/files/default
cp -r $AUTOARRAY_EDEN_PATH/test_autoarray/unit/config/* $VIS_AUTOARRAY_PATH/VIS_AutoArray_Util/tests/python/files/default/
