echo "map from autofit.tools -> VIS_AutoFit_Tools"

sed -i 's:"unit/config":"VIS_AutoFit_Tools/tests/python/files/default/config":g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.tools/from VIS_AutoFit_Tools/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit.tools/from VIS_AutoFit_Tools/g' $VIS_AUTOFIT_PATH/*/*/*/*.py