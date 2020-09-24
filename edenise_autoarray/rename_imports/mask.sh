echo "import mask -> VIS_CTI_AutoArray_Mask"

sed -i 's/from autoarray import mask/import VIS_CTI_AutoArray_Mask/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import mask/import VIS_CTI_AutoArray_Mask/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.mask import mask/import VIS_CTI_AutoArray_Mask/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.mask import mask/import VIS_CTI_AutoArray_Mask/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.mask/from VIS_CTI_AutoArray_Mask/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.mask/from VIS_CTI_AutoArray_Mask/g' $PYEUCLID_CTI_PATH/*/*/*/*.py