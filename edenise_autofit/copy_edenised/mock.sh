AUTOFIT_EDEN_PATH=$EDEN_PATH"/autofit_eden"


echo "Copying exc.py, mock.py files from autofit to VIS_AutoFit main path"
cp -r $AUTOFIT_EDEN_PATH/autofit/mock/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoFit_Mock/python/VIS_CTI_AutoFit_Mock/
cp -r $AUTOFIT_EDEN_PATH/autofit/mock/mock.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoFit_Mock/python/VIS_CTI_AutoFit_Mock/
cp -r $AUTOFIT_EDEN_PATH/autofit/mock/mock_real.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoFit_Mock/python/VIS_CTI_AutoFit_Mock/
cp -r $AUTOFIT_EDEN_PATH/autofit/mock/mock_search.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoFit_Mock/python/VIS_CTI_AutoFit_Mock/