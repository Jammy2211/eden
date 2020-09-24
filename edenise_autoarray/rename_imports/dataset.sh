echo "import dataset -> VIS_CTI_AutoArray_Dataset"

sed -i 's/from autoarray import dataset/import VIS_CTI_AutoArray_Dataset/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import dataset/import VIS_CTI_AutoArray_Dataset/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.dataset/from VIS_CTI_AutoArray_Dataset/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.dataset/from VIS_CTI_AutoArray_Dataset/g' $PYEUCLID_CTI_PATH/*/*/*/*.py