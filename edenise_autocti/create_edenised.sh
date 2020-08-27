echo
echo "----- create_edenised.sh -----"
echo
echo "Deleting old edenised autocti project"

### Delete edenised autocti

rm -rf $EDEN_PATH/autocti_eden

echo "Creating new edenised autocti project"

$PYAUTOFIT_PATH/scripts/edenise.py $PYAUTOCTI_PATH
