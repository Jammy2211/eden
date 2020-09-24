echo "import mask -> VIS_CTI_AutoCTI_Mask"

sed -i 's/from autocti import mask/import VIS_CTI_AutoCTI_Mask/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti import mask/import VIS_CTI_AutoCTI_Mask/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.mask/from VIS_CTI_AutoCTI_Mask/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.mask/from VIS_CTI_AutoCTI_Mask/g' $PYEUCLID_CTI_PATH/*/*/*/*.py