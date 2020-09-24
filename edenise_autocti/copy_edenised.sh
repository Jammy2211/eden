echo
echo "------ copy_edenised_to_pyeuclid.sh ------"
echo

AUTOCTI_EDEN_PATH=$EDEN_PATH"/autocti_eden"


echo "Copying from edenised PyAutoCTI to VIS_CTI"

EDEN_COPY_PATH=$EDEN_PATH"/edenise_autocti/copy_edenised"

source $EDEN_COPY_PATH"/arctic.sh"
source $EDEN_COPY_PATH"/extra.sh"
source $EDEN_COPY_PATH"/mask.sh"
source $EDEN_COPY_PATH"/structures.sh"
source $EDEN_COPY_PATH"/charge_injection.sh"
source $EDEN_COPY_PATH"/dataset.sh"
source $EDEN_COPY_PATH"/phase_abstract.sh"
source $EDEN_COPY_PATH"/phase_ci.sh"
source $EDEN_COPY_PATH"/phase_dataset.sh"
source $EDEN_COPY_PATH"/phase_extensions.sh"
source $EDEN_COPY_PATH"/pipeline.sh"
source $EDEN_COPY_PATH"/plot.sh"
source $EDEN_COPY_PATH"/util.sh"