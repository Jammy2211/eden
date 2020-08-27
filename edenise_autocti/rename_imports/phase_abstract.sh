echo "import pipeline.phase.abstract -> VIS_CTI_Phase_Abstract"
sed -i 's/from autocti.pipeline.phase.abstract/from VIS_CTI_Phase_Abstract/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.abstract/from VIS_CTI_Phase_Abstract/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase.settings/from VIS_CTI_Phase_Abstract.settings/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.settings/from VIS_CTI_Phase_Abstract.settings/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase import abstract/import VIS_CTI_Phase_Abstract as abstract/g' $VIS_AUTOCTI_PATH/*/*/*/*.py