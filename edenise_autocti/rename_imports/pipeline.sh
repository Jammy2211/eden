echo "import pipeline -> VIS_CTI_AutoCTI_Pipeline"
sed -i 's/from autocti.pipeline/from VIS_CTI_AutoCTI_Pipeline/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.pipeline/from VIS_CTI_AutoCTI_Pipeline/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's:"unit/config":"VIS_CTI_AutoCTI_Pipeline/tests/python/files/default/config":g' $PYEUCLID_CTI_PATH/*.py