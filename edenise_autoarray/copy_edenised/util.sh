echo "Copying autoarray/util -> VIS_AutoArray_Util"

AUTO_SRC_PATH_UTIL=$AUTOARRAY_EDEN_PATH"/autoarray/util"
VIS_SRC_PATH_UTIL=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Util/python/VIS_AutoArray_Util"

cp $AUTO_SRC_PATH_UTIL/array_util.py $VIS_SRC_PATH_UTIL
cp $AUTO_SRC_PATH_UTIL/binning_util.py $VIS_SRC_PATH_UTIL
cp $AUTO_SRC_PATH_UTIL/fit_util.py $VIS_SRC_PATH_UTIL
cp $AUTO_SRC_PATH_UTIL/frame_util.py $VIS_SRC_PATH_UTIL
cp $AUTO_SRC_PATH_UTIL/grid_util.py $VIS_SRC_PATH_UTIL
cp $AUTO_SRC_PATH_UTIL/mask_util.py $VIS_SRC_PATH_UTIL
cp $AUTO_SRC_PATH_UTIL/plotter_util.py $VIS_SRC_PATH_UTIL
cp $AUTO_SRC_PATH_UTIL/pixelization_util.py $VIS_SRC_PATH_UTIL
cp $AUTO_SRC_PATH_UTIL/sparse_util.py $VIS_SRC_PATH_UTIL

cp $AUTO_SRC_PATH_UTIL/__init__.py $VIS_SRC_PATH_UTIL/

AUTO_TEST_PATH_UTIL=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/util"
VIS_TEST_PATH_UTIL=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Util/tests/python"

cp $AUTO_TEST_PATH_UTIL/test_array_util.py $VIS_TEST_PATH_UTIL
cp $AUTO_TEST_PATH_UTIL/test_binning_util.py $VIS_TEST_PATH_UTIL
cp $AUTO_TEST_PATH_UTIL/test_fit_util.py $VIS_TEST_PATH_UTIL
cp $AUTO_TEST_PATH_UTIL/test_frame_util.py $VIS_TEST_PATH_UTIL
cp $AUTO_TEST_PATH_UTIL/test_grid_util.py $VIS_TEST_PATH_UTIL
cp $AUTO_TEST_PATH_UTIL/test_mask_util.py $VIS_TEST_PATH_UTIL
cp $AUTO_TEST_PATH_UTIL/test_plotter_util.py $VIS_TEST_PATH_UTIL
cp $AUTO_TEST_PATH_UTIL/test_sparse_util.py $VIS_TEST_PATH_UTIL

cp -r $AUTO_TEST_PATH_UTIL/files $VIS_TEST_PATH_UTIL

rm -rf $VIS_TEST_PATH_UTIL/__init__.py