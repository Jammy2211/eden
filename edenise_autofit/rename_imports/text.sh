echo "map autofit.text -> VIS_AutoFit_Text"

sed -i 's/from autofit.text/from VIS_AutoFit_Text/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.text/from VIS_AutoFit_Text/g' $VIS_AUTOFIT_PATH/*/*/*/*.py
# sed -i 's/text\./VIS_AutoFit_Text./g' $VIS_AUTOFIT_PATH/*.py
# sed -i 's/text\./VIS_AutoFit_Text./g' $VIS_AUTOFIT_PATH/*/*/*/*.py