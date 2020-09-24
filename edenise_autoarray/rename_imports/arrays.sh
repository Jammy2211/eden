echo "import structures -> VIS_CTI_AutoArray_Structures"

sed -i 's/from autoarray.structures import abstract_structure/from VIS_CTI_AutoArray_Array import abstract_structure/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures import abstract_structure/from VIS_CTI_AutoArray_Array import abstract_structure/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.arrays.abstract_array/from VIS_CTI_AutoArray_Array.abstract_array/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.arrays.abstract_array/from VIS_CTI_AutoArray_Array.abstract_array/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.arrays import/from VIS_CTI_AutoArray_Array import/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.arrays import/from VIS_CTI_AutoArray_Array import/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
# sed -i 's/from autoarray.structures.arrays/from VIS_CTI_AutoArray_Array/g' $PYEUCLID_CTI_PATH/*.py
# sed -i 's/from autoarray.structures.arrays/from VIS_CTI_AutoArray_Array/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import arrays/import VIS_CTI_AutoArray_Array as arrays/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures import arrays/import VIS_CTI_AutoArray_Array as arrays/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import region/from VIS_CTI_AutoArray_Array import region/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures import region/from VIS_CTI_AutoArray_Array import region/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.region/from VIS_CTI_AutoArray_Array.region/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.region/from VIS_CTI_AutoArray_Array.region/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import kernel/from VIS_CTI_AutoArray_Array import kernel/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures import kernel/from VIS_CTI_AutoArray_Array import kernel/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.kernel/from VIS_CTI_AutoArray_Array.kernel/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.kernel/from VIS_CTI_AutoArray_Array.kernel/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures import convolver/from VIS_CTI_AutoArray_Array import convolver/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures import convolver/from VIS_CTI_AutoArray_Array import convolver/g' $PYEUCLID_CTI_PATH/*/*/*/*.py