echo "map autofit.mapper -> VIS_CTI_AutoFit_Mapper"

sed -i 's/from autofit.mapper/from VIS_CTI_AutoFit_Mapper/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.mapper/from VIS_CTI_AutoFit_Mapper/g' $PYEUCLID_CTI_PATH/*/*/*/*.py