echo "import fit -> VIS_AutoArray_Fit"

sed -i 's/from autoarray import fit/import VIS_AutoArray_Fit/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import fit/import VIS_AutoArray_Fit/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.fit/from VIS_AutoArray_Fit/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.fit/from VIS_AutoArray_Fit/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py