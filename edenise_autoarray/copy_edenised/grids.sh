echo "Copying autoarray/structures -> VIS_AutoArray_Grid"

AUTO_SRC_PATH_GRID=$AUTOARRAY_EDEN_PATH"/autoarray/structures"
VIS_SRC_PATH_GRID=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Grid/python/VIS_AutoArray_Grid"

cp -r $AUTO_SRC_PATH_GRID/grids/abstract_grid.py $VIS_SRC_PATH_GRID/
cp -r $AUTO_SRC_PATH_GRID/grids/grids.py $VIS_SRC_PATH_GRID/
cp -r $AUTO_SRC_PATH_GRID/grids/coordinates.py $VIS_SRC_PATH_GRID/
cp -r $AUTO_SRC_PATH_GRID/grids/iterate.py $VIS_SRC_PATH_GRID/
cp -r $AUTO_SRC_PATH_GRID/grids/interpolate.py $VIS_SRC_PATH_GRID/
cp -r $AUTO_SRC_PATH_GRID/grids/pixelization.py $VIS_SRC_PATH_GRID/
cp -r $AUTO_SRC_PATH_GRID/grids/decorators.py $VIS_SRC_PATH_GRID/

AUTO_TEST_PATH_GRID=$AUTOARRAY_EDEN_PATH/"test_autoarray/unit/structures"
VIS_TEST_PATH_GRID=$VIS_AUTOARRAY_PATH"/VIS_AutoArray_Grid/tests/python"

cp -r $AUTO_TEST_PATH_GRID/grids/test_abstract_grid.py $VIS_TEST_PATH_GRID/
cp -r $AUTO_TEST_PATH_GRID/grids/test_grids.py $VIS_TEST_PATH_GRID/

cp -r $AUTO_TEST_PATH_GRID/grids/files $VIS_TEST_PATH_GRID/

rm -rf $VIS_TEST_PATH_GRID/__init__.py