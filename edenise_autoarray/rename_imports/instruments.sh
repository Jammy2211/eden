echo "import instruments -> VIS_AutoArray_Instruments"

sed -i 's/from autoarray import instruments/import VIS_AutoArray_Instruments/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import instruments/import VIS_AutoArray_Instruments/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.instruments/from VIS_AutoArray_Instruments/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.instruments/from VIS_AutoArray_Instruments/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from . import acs//g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from . import acs//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py