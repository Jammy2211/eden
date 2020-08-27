echo "import operators -> VIS_AutoArray_Operators"

sed -i 's/from autoarray import operators/import VIS_AutoArray_Operators/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import operators/import VIS_AutoArray_Operators/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.operators/from VIS_AutoArray_Operators/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.operators/from VIS_AutoArray_Operators/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py