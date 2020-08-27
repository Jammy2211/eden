echo
echo "----- create_edenised.sh -----"
echo
echo "Deleting old edenised autofit project"

rm -rf $EDEN_PATH/autofit_eden

echo "Creating new edenised autofit project"

$PYAUTOFIT_PATH/scripts/edenise.py $PYAUTOFIT_PATH
