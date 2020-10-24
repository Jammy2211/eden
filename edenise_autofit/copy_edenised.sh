echo
echo "------ copy_edenised.sh ------"
echo

AUTOFIT_EDEN_PATH=$EDEN_PATH"/autofit_eden"


echo "Copying from edenised PyAutoFit to VIS_AutoFit"

EDEN_COPY_PATH=$EDEN_PATH"/edenise_autofit/copy_edenised"

source $EDEN_COPY_PATH"/extra.sh"
source $EDEN_COPY_PATH"/mock.sh"
source $EDEN_COPY_PATH"/mapper.sh"
source $EDEN_COPY_PATH"/prior.sh"
source $EDEN_COPY_PATH"/prior_model.sh"
source $EDEN_COPY_PATH"/text.sh"
source $EDEN_COPY_PATH"/tools.sh"
source $EDEN_COPY_PATH"/non_linear.sh"
