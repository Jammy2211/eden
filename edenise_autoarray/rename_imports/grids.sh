echo "import structures -> VIS_AutoArray_Structures"

sed -i 's/from autoarray.structures.grids/from VIS_AutoArray_Grid/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures.grids/from VIS_AutoArray_Grid/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import grids/import VIS_AutoArray_Grid as grids/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures import grids/import VIS_AutoArray_Grid as grids/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py