### Module Mappings

# autofit/mapper -> VIS_AutoFit_Mapper
# autofit/mapper/prior -> VIS_AutoFit_Prior
# autofit/mapper/prior_model -> VIS_AutoFit_PriorModel
# autofit/text -> VIS_AutoFit_Text
# autofit/tools -> VIS_AutoFit_Tools

echo
echo "------ rename_imports.sh ------"
echo

VIS_AUTOFIT_PATH=$PYEUCLID_PATH"/VIS_AutoFit"

# sed -i 's/from typing_inspect import is_tuple_type//g' $VIS_AUTOFIT_PATH/*/*/*/*.py

# The order prior_model -> prior -> mapper is required to change imports correctly.

EDEN_RENAME_PATH=$EDEN_PATH"/edenise_autofit/rename_imports"

source $EDEN_RENAME_PATH"/extra.sh"
source $EDEN_RENAME_PATH"/mapper.sh"
source $EDEN_RENAME_PATH"/prior.sh"
source $EDEN_RENAME_PATH"/mapper_2.sh"
source $EDEN_RENAME_PATH"/text.sh"
source $EDEN_RENAME_PATH"/non_linear.sh"
source $EDEN_RENAME_PATH"/tools.sh"
source $EDEN_RENAME_PATH"/extra_tests.sh"

echo "Extra mappings"
sed -i 's/dill/pickle/g' $VIS_AUTOFIT_PATH/*/*/*/*.py