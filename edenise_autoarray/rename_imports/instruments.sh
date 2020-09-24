echo "import instruments -> VIS_CTI_AutoArray_Instruments"

sed -i 's/from autoarray import instruments/import VIS_CTI_AutoArray_Instruments/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import instruments/import VIS_CTI_AutoArray_Instruments/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.instruments/from VIS_CTI_AutoArray_Instruments/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.instruments/from VIS_CTI_AutoArray_Instruments/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from . import acs//g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from . import acs//g' $PYEUCLID_CTI_PATH/*/*/*/*.py