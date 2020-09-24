echo "import structures -> VIS_CTI_AutoArray_Structures"

sed -i 's/from autoarray.structures.grids/from VIS_CTI_AutoArray_Grid/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.grids/from VIS_CTI_AutoArray_Grid/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures import grids/import VIS_CTI_AutoArray_Grid as grids/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures import grids/import VIS_CTI_AutoArray_Grid as grids/g' $PYEUCLID_CTI_PATH/*/*/*/*.py