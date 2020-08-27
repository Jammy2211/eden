echo "map autofit.mapper -> VIS_AutoFit_Mapper"

sed -i 's/from autofit.mapper/from VIS_AutoFit_Mapper/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.mapper/from VIS_AutoFit_Mapper/g' $VIS_AUTOFIT_PATH/*/*/*/*.py