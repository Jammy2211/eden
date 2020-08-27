echo "import pipeline.phase.ci_imaging -> VIS_CTI_Phase_CI"
sed -i 's/from autocti.pipeline.phase.ci_imaging import PhaseCIImaging/from VIS_CTI_Phase_CI.phase import PhaseCIImaging/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.ci_imaging import PhaseCIImaging/from VIS_CTI_Phase_CI.phase import PhaseCIImaging/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase.ci_imaging/from VIS_CTI_Phase_CI/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.ci_imaging/from VIS_CTI_Phase_CI/g' $VIS_AUTOCTI_PATH/*/*/*/*.py