### Module Mappings

# autocti/mapper -> VIS_CTI_AutoCTI_Mapper
# autocti/mapper/prior -> VIS_CTI_AutoCTI_Prior
# autocti/mapper/prior_model -> VIS_CTI_AutoCTI_PriorModel
# autocti/text -> VIS_CTI_AutoCTI_Text
# autocti/tools -> VIS_CTI_AutoCTI_Tools

echo
echo "------ rename_imports.sh ------"
echo



EDEN_RENAME_PATH=$EDEN_PATH"/edenise_autocti/rename_imports"

source $EDEN_RENAME_PATH"/arctic.sh"
source $EDEN_RENAME_PATH"/extra.sh"
source $EDEN_RENAME_PATH"/autofit.sh"
source $EDEN_RENAME_PATH"/autoarray.sh"
source $EDEN_RENAME_PATH"/mask.sh"
source $EDEN_RENAME_PATH"/structures.sh"
source $EDEN_RENAME_PATH"/charge_injection.sh"
source $EDEN_RENAME_PATH"/dataset.sh"
source $EDEN_RENAME_PATH"/phase_abstract.sh"
source $EDEN_RENAME_PATH"/phase_ci.sh"
source $EDEN_RENAME_PATH"/phase_dataset.sh"
source $EDEN_RENAME_PATH"/phase_extensions.sh"
source $EDEN_RENAME_PATH"/pipeline.sh"
source $EDEN_RENAME_PATH"/plot.sh"
source $EDEN_RENAME_PATH"/util.sh"