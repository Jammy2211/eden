echo
echo "----- create_edenised.sh -----"
echo
echo "Deleting old edenised autoconf project"

rm -rf $EDEN_PATH/autoconf_eden

echo "Creating new edenised autoconf project"

$PYAUTOFIT_PATH/scripts/edenise.py $PYAUTOCONF_PATH