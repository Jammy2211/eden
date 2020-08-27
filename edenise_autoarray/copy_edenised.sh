echo
echo "------ copy_edenised_to_pyeuclid.sh ------"
echo

AUTOARRAY_EDEN_PATH=$EDEN_PATH"/autoarray_eden"
VIS_AUTOARRAY_PATH=$PYEUCLID_PATH"/VIS_AutoArray"

echo "Copying from edenised PyAutoArray to VIS_AutoArray"

EDEN_COPY_PATH=$EDEN_PATH"/edenise_autoarray/copy_edenised"

source $EDEN_COPY_PATH"/extra.sh"
source $EDEN_COPY_PATH"/util.sh"
source $EDEN_COPY_PATH"/mask.sh"
source $EDEN_COPY_PATH"/arrays.sh"
source $EDEN_COPY_PATH"/grids.sh"
source $EDEN_COPY_PATH"/frames.sh"
# source $EDEN_COPY_PATH"/structures.sh"
source $EDEN_COPY_PATH"/dataset.sh"
source $EDEN_COPY_PATH"/fit.sh"
source $EDEN_COPY_PATH"/instruments.sh"
source $EDEN_COPY_PATH"/operators.sh"
source $EDEN_COPY_PATH"/plot.sh"