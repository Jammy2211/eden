echo "import pipeline.phase.ci_imaging -> VIS_CTI_AutoCTI_Phase_CI"
sed -i 's/from autocti.pipeline.phase.ci_imaging import PhaseCIImaging/from VIS_CTI_AutoCTI_Phase_CI.phase import PhaseCIImaging/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.ci_imaging import PhaseCIImaging/from VIS_CTI_AutoCTI_Phase_CI.phase import PhaseCIImaging/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase.ci_imaging/from VIS_CTI_AutoCTI_Phase_CI/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.ci_imaging/from VIS_CTI_AutoCTI_Phase_CI/g' $PYEUCLID_CTI_PATH/*/*/*/*.py