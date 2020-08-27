EDENISE_PATH=$EDEN_PATH"/edenise_autocti"

echo
echo "##################"
echo "EDENISING AUTOCTI"
echo "##################"
echo
echo "----- edenise_autocti.sh -----"
echo

source $EDENISE_PATH/create_edenised.sh
source $EDENISE_PATH/delete_pyeuclid.sh
source $EDENISE_PATH/copy_edenised.sh
source $EDENISE_PATH/rename_imports.sh