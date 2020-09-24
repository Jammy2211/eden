### Module Mappings

# autoarray/util -> VIS_CTI_AutoArray_Util
# autoarray/structures -> VIS_CTI_AutoArray_Structures

echo
echo "------ rename_imports.sh ------"
echo

EDEN_RENAME_PATH=$EDEN_PATH"/edenise_autoarray/rename_imports"

source $EDEN_RENAME_PATH"/extra.sh"
source $EDEN_RENAME_PATH"/util.sh"
source $EDEN_RENAME_PATH"/mask.sh"
source $EDEN_RENAME_PATH"/arrays.sh"
source $EDEN_RENAME_PATH"/grids.sh"
source $EDEN_RENAME_PATH"/frames.sh"
#source $EDEN_RENAME_PATH"/structures.sh"
source $EDEN_RENAME_PATH"/dataset.sh"
source $EDEN_RENAME_PATH"/fit.sh"
source $EDEN_RENAME_PATH"/instruments.sh"
source $EDEN_RENAME_PATH"/operators.sh"
source $EDEN_RENAME_PATH"/plot.sh"