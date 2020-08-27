echo "import structures -> VIS_AutoArray_Structures"

sed -i 's/from autoarray.structures.frames/from VIS_AutoArray_Frame/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures.frames/from VIS_AutoArray_Frame/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import frames as f/import VIS_AutoArray_Frame as f/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures import frames as f/import VIS_AutoArray_Frame as f/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py