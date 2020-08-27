echo "import dataset -> VIS_CTI_Dataset"
sed -i 's/from autocti import dataset/import VIS_CTI_Dataset/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti import dataset/import VIS_CTI_Dataset/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.dataset/from VIS_CTI_Dataset/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.dataset/from VIS_CTI_Dataset/g' $VIS_AUTOCTI_PATH/*/*/*/*.py