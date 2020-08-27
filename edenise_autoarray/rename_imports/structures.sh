echo "import structures -> VIS_AutoArray_Structures"

sed -i 's/from autoarray import structures/import VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import structures/import VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.arrays/from VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures.arrays/from VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.grids/from VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures.grids/from VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.frames/from VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures.frames/from VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures/from VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures/from VIS_AutoArray_Structures/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py

