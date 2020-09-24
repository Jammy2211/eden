echo "import pipeline.phase.extensions  -> VIS_CTI_AutoCTI_Phase_Extensions"
sed -i 's/from autocti.pipeline.phase.extensions import HyperNoisePhase/from VIS_CTI_AutoCTI_Phase_Extensions.hyper_noise_phase import HyperNoisePhase/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase.extensions/from VIS_CTI_AutoCTI_Phase_Extensions/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.extensions/from VIS_CTI_AutoCTI_Phase_Extensions/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase import extensions/import VIS_CTI_AutoCTI_Phase_Extensions as extensions/g' $PYEUCLID_CTI_PATH/*/*/*/*.py