echo "import structures -> VIS_CTI_AutoArray_Structures"

sed -i 's/from autoarray import structures/import VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import structures/import VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.arrays/from VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.arrays/from VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.grids/from VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.grids/from VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.frames/from VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.frames/from VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures/from VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures/from VIS_CTI_AutoArray_Structures/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

