echo "import mask -> VIS_CTI_Mask"

sed -i 's/from autocti import mask/import VIS_CTI_Mask/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti import mask/import VIS_CTI_Mask/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.mask/from VIS_CTI_Mask/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.mask/from VIS_CTI_Mask/g' $VIS_AUTOCTI_PATH/*/*/*/*.py