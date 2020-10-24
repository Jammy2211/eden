AUTOFIT_EDEN_PATH=$EDEN_PATH"/autofit_eden"


echo "Copying exc.py, mock.py files from autofit to VIS_AutoFit main path"
cp -r $AUTOFIT_EDEN_PATH/autofit/exc.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoFit_Tools/python/VIS_CTI_AutoFit_Tools