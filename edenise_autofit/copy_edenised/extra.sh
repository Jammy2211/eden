AUTOFIT_EDEN_PATH=$EDEN_PATH"/autofit_eden"


echo "Copying exc.py, mock.py and conftest.py files from autofit to VIS_AutoFit main path"
cp -r $AUTOFIT_EDEN_PATH/autofit/exc.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoFit_Tools/python/VIS_CTI_AutoFit_Tools/exc.py
cp -r $AUTOFIT_EDEN_PATH/test_autofit/mock.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoFit_Tools/python/VIS_CTI_AutoFit_Tools/mock.py
cp -r $AUTOFIT_EDEN_PATH/test_autofit/mock_real.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoFit_Tools/python/VIS_CTI_AutoFit_Tools/mock_real.py
cp -r $AUTOFIT_EDEN_PATH/test_autofit/conftest.py $PYEUCLID_CTI_PATH/af_conftest.py