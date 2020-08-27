echo "import pipeline.phase.dataset -> VIS_CTI_Phase_Dataset"
sed -i 's/from autocti.pipeline.phase.dataset import PhaseDataset/from VIS_CTI_Phase_Dataset.phase import PhaseDataset/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.dataset import PhaseDataset/from VIS_CTI_Phase_Dataset.phase import PhaseDataset/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.pipeline.phase.dataset/from VIS_CTI_Phase_Dataset/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.pipeline.phase.dataset/from VIS_CTI_Phase_Dataset/g' $VIS_AUTOCTI_PATH/*/*/*/*.py