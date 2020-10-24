echo "Copying exc.py, mock.py files from autoarray to VIS_AutoArray main path"
cp -r $AUTOARRAY_EDEN_PATH/autoarray/mock/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mock/python/VIS_CTI_AutoArray_Mock
# cp -r $AUTOARRAY_EDEN_PATH/autoarray/mock/mock.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mock/python/VIS_CTI_AutoArray_Mock
# cp -r $AUTOARRAY_EDEN_PATH/autoarray/mock/fixtures.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mock/python/VIS_CTI_AutoArray_Mock