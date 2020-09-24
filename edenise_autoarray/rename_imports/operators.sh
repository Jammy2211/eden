echo "import operators -> VIS_CTI_AutoArray_Operators"

sed -i 's/from autoarray import operators/import VIS_CTI_AutoArray_Operators/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import operators/import VIS_CTI_AutoArray_Operators/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.operators/from VIS_CTI_AutoArray_Operators/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.operators/from VIS_CTI_AutoArray_Operators/g' $PYEUCLID_CTI_PATH/*/*/*/*.py