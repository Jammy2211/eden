echo "map autofit.text -> VIS_CTI_AutoFit_Text"

sed -i 's/from autofit.text/from VIS_CTI_AutoFit_Text/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.text/from VIS_CTI_AutoFit_Text/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
# sed -i 's/text\./VIS_CTI_AutoFit_Text./g' $PYEUCLID_CTI_PATH/*.py
# sed -i 's/text\./VIS_CTI_AutoFit_Text./g' $PYEUCLID_CTI_PATH/*/*/*/*.py