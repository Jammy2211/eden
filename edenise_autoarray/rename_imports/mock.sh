echo "mock imports"

sed -i 's/from autoarray.mock/from VIS_CTI_AutoArray_Mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.mock/from VIS_CTI_AutoArray_Mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py