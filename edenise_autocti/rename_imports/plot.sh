echo "import plot -> VIS_CTI_Plot"
sed -i 's/from autocti import plot/import VIS_CTI_Plot/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti import plot/import VIS_CTI_Plot/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.plot/from VIS_CTI_Plot/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.plot/from VIS_CTI_Plot/g' $VIS_AUTOCTI_PATH/*/*/*/*.py