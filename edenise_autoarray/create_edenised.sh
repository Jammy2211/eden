echo
echo "----- create_edenised.sh -----"
echo
echo "Deleting old edenised autoarray project"

rm -rf $EDEN_PATH/autoarray_eden

echo "Creating new edenised autoarray project"

$PYAUTOFIT_PATH/scripts/edenise.py $PYAUTOARRAY_PATH
