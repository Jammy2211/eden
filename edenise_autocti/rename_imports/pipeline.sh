echo "import pipeline -> VIS_CTI_Pipeline"
sed -i 's/from autocti.pipeline/from VIS_CTI_Pipeline/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.pipeline/from VIS_CTI_Pipeline/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's:"unit/config":"VIS_CTI_Pipeline/tests/python/files/default/config":g' $VIS_AUTOCTI_PATH/*.py