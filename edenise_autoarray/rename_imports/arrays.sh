echo "import structures -> VIS_AutoArray_Structures"

sed -i 's/from autoarray.structures import abstract_structure/from VIS_AutoArray_Array import abstract_structure/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures import abstract_structure/from VIS_AutoArray_Array import abstract_structure/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.arrays.abstract_array/from VIS_AutoArray_Array.abstract_array/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures.arrays.abstract_array/from VIS_AutoArray_Array.abstract_array/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.arrays import/from VIS_AutoArray_Array import/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures.arrays import/from VIS_AutoArray_Array import/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
# sed -i 's/from autoarray.structures.arrays/from VIS_AutoArray_Array/g' $VIS_AUTOARRAY_PATH/*.py
# sed -i 's/from autoarray.structures.arrays/from VIS_AutoArray_Array/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import arrays/import VIS_AutoArray_Array as arrays/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures import arrays/import VIS_AutoArray_Array as arrays/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import region/from VIS_AutoArray_Array import region/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures import region/from VIS_AutoArray_Array import region/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.region/from VIS_AutoArray_Array.region/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures.region/from VIS_AutoArray_Array.region/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import kernel/from VIS_AutoArray_Array import kernel/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures import kernel/from VIS_AutoArray_Array import kernel/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.kernel/from VIS_AutoArray_Array.kernel/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures.kernel/from VIS_AutoArray_Array.kernel/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures import convolver/from VIS_AutoArray_Array import convolver/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.structures import convolver/from VIS_AutoArray_Array import convolver/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py