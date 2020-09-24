echo "import structures -> VIS_CTI_AutoCTI_Structures"
sed -i 's/from autocti import structures/import VIS_CTI_AutoCTI_Structures/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti import structures/import VIS_CTI_AutoCTI_Structures/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.structures/from VIS_CTI_AutoCTI_Structures/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.structures/from VIS_CTI_AutoCTI_Structures/g' $PYEUCLID_CTI_PATH/*/*/*/*.py