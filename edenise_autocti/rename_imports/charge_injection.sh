echo "import charge_injection -> VIS_CTI_CI"
sed -i 's/from autocti import charge_injection/import VIS_CTI_CI/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti import charge_injection/import VIS_CTI_CI/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.charge_injection/from VIS_CTI_CI/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.charge_injection/from VIS_CTI_CI/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/charge_injection\./VIS_CTI_CI./g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/charge_injection\./VIS_CTI_CI./g' $VIS_AUTOCTI_PATH/*/*/*/*.py