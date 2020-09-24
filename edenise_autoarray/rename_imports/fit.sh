echo "import fit -> VIS_CTI_AutoArray_Fit"

sed -i 's/from autoarray import fit/import VIS_CTI_AutoArray_Fit/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import fit/import VIS_CTI_AutoArray_Fit/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.fit/from VIS_CTI_AutoArray_Fit/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.fit/from VIS_CTI_AutoArray_Fit/g' $PYEUCLID_CTI_PATH/*/*/*/*.py