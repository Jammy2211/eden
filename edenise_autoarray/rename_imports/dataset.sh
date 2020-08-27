echo "import dataset -> VIS_AutoArray_Dataset"

sed -i 's/from autoarray import dataset/import VIS_AutoArray_Dataset/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import dataset/import VIS_AutoArray_Dataset/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.dataset/from VIS_AutoArray_Dataset/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.dataset/from VIS_AutoArray_Dataset/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py