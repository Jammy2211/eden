EDENISE_PATH=$EDEN_PATH"/edenise_autoconf"

echo
echo "##################"
echo "EDENISING AUTOCONF"
echo "##################"
echo
echo "----- edenise_autoconf.sh -----"
echo

source $EDENISE_PATH/create_edenised.sh
source $EDENISE_PATH/delete_pyeuclid.sh
source $EDENISE_PATH/copy_edenised_to_pyeuclid.sh
source $EDENISE_PATH/rename_imports.sh