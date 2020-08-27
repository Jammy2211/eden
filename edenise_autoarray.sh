EDENISE_PATH=$EDEN_PATH"/edenise_autoarray"

echo
echo "####################"
echo "EDENISING AUTOARRAY"
echo "####################"
echo
echo "----- edenise_autofit.sh -----"
echo

source $EDENISE_PATH/create_edenised.sh
source $EDENISE_PATH/delete_pyeuclid.sh
source $EDENISE_PATH/copy_edenised.sh
source $EDENISE_PATH/rename_imports.sh