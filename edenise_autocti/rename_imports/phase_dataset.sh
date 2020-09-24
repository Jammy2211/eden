echo "import pipeline.phase.dataset -> VIS_CTI_AutoCTI_Phase_Dataset"
sed -i 's/from autocti.pipeline.phase.dataset import PhaseDataset/from VIS_CTI_AutoCTI_Phase_Dataset.phase import PhaseDataset/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.dataset import PhaseDataset/from VIS_CTI_AutoCTI_Phase_Dataset.phase import PhaseDataset/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase.dataset/from VIS_CTI_AutoCTI_Phase_Dataset/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.dataset/from VIS_CTI_AutoCTI_Phase_Dataset/g' $PYEUCLID_CTI_PATH/*/*/*/*.py