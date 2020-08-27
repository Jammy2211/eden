echo "import mask -> VIS_AutoArray_Mask"

sed -i 's/from autoarray import mask/import VIS_AutoArray_Mask/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import mask/import VIS_AutoArray_Mask/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.mask import mask/import VIS_AutoArray_Mask/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.mask import mask/import VIS_AutoArray_Mask/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.mask/from VIS_AutoArray_Mask/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.mask/from VIS_AutoArray_Mask/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py