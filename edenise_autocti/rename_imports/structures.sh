echo "import structures -> VIS_CTI_Structures"
sed -i 's/from autocti import structures/import VIS_CTI_Structures/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti import structures/import VIS_CTI_Structures/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.structures/from VIS_CTI_Structures/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.structures/from VIS_CTI_Structures/g' $VIS_AUTOCTI_PATH/*/*/*/*.py