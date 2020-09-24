echo "import dataset -> VIS_CTI_AutoCTI_Dataset"
sed -i 's/from autocti import dataset/import VIS_CTI_AutoCTI_Dataset/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti import dataset/import VIS_CTI_AutoCTI_Dataset/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.dataset/from VIS_CTI_AutoCTI_Dataset/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.dataset/from VIS_CTI_AutoCTI_Dataset/g' $PYEUCLID_CTI_PATH/*/*/*/*.py