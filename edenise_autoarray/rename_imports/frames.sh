echo "import structures -> VIS_CTI_AutoArray_Structures"

sed -i 's/from autoarray.structures.frames/from VIS_CTI_AutoArray_Frame/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.frames/from VIS_CTI_AutoArray_Frame/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import frames as f/import VIS_CTI_AutoArray_Frame as f/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures import frames as f/import VIS_CTI_AutoArray_Frame as f/g' $PYEUCLID_CTI_PATH/*/*/*/*.py