echo "import pipeline.phase.extensions  -> VIS_CTI_Phase_Extensions"
sed -i 's/from autocti.pipeline.phase.extensions import HyperNoisePhase/from VIS_CTI_Phase_Extensions.hyper_noise_phase import HyperNoisePhase/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase.extensions/from VIS_CTI_Phase_Extensions/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.extensions/from VIS_CTI_Phase_Extensions/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase import extensions/import VIS_CTI_Phase_Extensions as extensions/g' $VIS_AUTOCTI_PATH/*/*/*/*.py