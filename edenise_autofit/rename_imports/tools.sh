echo "map from autofit.tools -> VIS_CTI_AutoFit_Tools"

sed -i 's:"unit/config":"VIS_CTI_AutoFit_Tools/tests/python/files/default/config":g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.tools/from VIS_CTI_AutoFit_Tools/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.tools/from VIS_CTI_AutoFit_Tools/g' $PYEUCLID_CTI_PATH/*/*/*/*.py