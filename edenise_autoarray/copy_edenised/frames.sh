echo "Copying autoarray/structures -> VIS_AutoArray_Frame"

AUTO_SRC_PATH_FRAME=$AUTOARRAY_EDEN_PATH"/autoarray/structures"
VIS_SRC_PATH_FRAME=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Frame/python/VIS_AutoArray_Frame"

cp -r $AUTO_SRC_PATH_FRAME/frames/abstract_frame.py $VIS_SRC_PATH_FRAME/
cp -r $AUTO_SRC_PATH_FRAME/frames/frames.py $VIS_SRC_PATH_FRAME/

AUTO_TEST_PATH_FRAME=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/structures"
VIS_TEST_PATH_FRAME=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Frame/tests/python"

cp -r $AUTO_TEST_PATH_FRAME/frames/test_abstract_frame.py $VIS_TEST_PATH_FRAME/
cp -r $AUTO_TEST_PATH_FRAME/frames/test_frames.py $VIS_TEST_PATH_FRAME/

cp -r $AUTO_TEST_PATH_FRAME/frames/files $VIS_TEST_PATH_FRAME/

rm -rf $VIS_TEST_PATH_FRAME/__init__.py