echo "import plot -> VIS_CTI_AutoCTI_Plot"
sed -i 's/from autocti import plot/import VIS_CTI_AutoCTI_Plot/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti import plot/import VIS_CTI_AutoCTI_Plot/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.plot/from VIS_CTI_AutoCTI_Plot/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.plot/from VIS_CTI_AutoCTI_Plot/g' $PYEUCLID_CTI_PATH/*/*/*/*.py