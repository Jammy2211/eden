### Module Mappings

# autofit/mapper -> VIS_CTI_AutoFit_Mapper
# autofit/mapper/prior -> VIS_CTI_AutoFit_Prior
# autofit/mapper/prior_model -> VIS_CTI_AutoFit_PriorModel
# autofit/text -> VIS_CTI_AutoFit_Text
# autofit/tools -> VIS_CTI_AutoFit_Tools

echo
echo "------ rename_imports.sh ------"
echo

# The order prior_model -> prior -> mapper is required to change imports correctly.

EDEN_RENAME_PATH=$EDEN_PATH"/edenise_autofit/rename_imports"

source $EDEN_RENAME_PATH"/extra.sh"
source $EDEN_RENAME_PATH"/mapper.sh"
source $EDEN_RENAME_PATH"/prior.sh"
source $EDEN_RENAME_PATH"/mapper_2.sh"
source $EDEN_RENAME_PATH"/text.sh"
source $EDEN_RENAME_PATH"/non_linear.sh"
source $EDEN_RENAME_PATH"/tools.sh"
source $EDEN_RENAME_PATH"/mock.sh"

echo "Extra mappings"
sed -i 's/dill/pickle/g' $PYEUCLID_CTI_PATH/*/*/*/*.py