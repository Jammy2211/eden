echo "Copying autoarray/plot -> VIS_AutoArray_Plot"

AUTO_SRC_PATH_PLOT=$AUTOARRAY_EDEN_PATH"/autoarray/plot"
VIS_SRC_PATH_PLOT=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Plot/python/VIS_AutoArray_Plot"

cp $AUTO_SRC_PATH_PLOT/fit_imaging_plots.py $VIS_SRC_PATH_PLOT
cp $AUTO_SRC_PATH_PLOT/imaging_plots.py $VIS_SRC_PATH_PLOT
cp $AUTO_SRC_PATH_PLOT/mat_objs.py $VIS_SRC_PATH_PLOT
# cp $AUTO_SRC_PATH_PLOT/plotters.py $VIS_SRC_PATH_PLOT

cp $AUTO_SRC_PATH_PLOT/__init__.py $VIS_SRC_PATH_PLOT/

AUTO_TEST_PATH_PLOT=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/plot"
VIS_TEST_PATH_PLOT=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Plot/tests/python"

cp $AUTO_TEST_PATH_PLOT/test_fit_imaging_plots.py $VIS_TEST_PATH_PLOT
cp $AUTO_TEST_PATH_PLOT/test_imaging_plots.py $VIS_TEST_PATH_PLOT
cp $AUTO_TEST_PATH_PLOT/test_mat_objs.py $VIS_TEST_PATH_PLOT
cp $AUTO_TEST_PATH_PLOT/test_plotters.py $VIS_TEST_PATH_PLOT

cp -r $AUTO_TEST_PATH_PLOT/files $VIS_TEST_PATH_PLOT

rm -rf $VIS_TEST_PATH_PLOT/__init__.py