echo "Copying exc.py, mock.py files from autocti to VIS_CTI main path"
cp -r $AUTOCTI_EDEN_PATH/autocti/mock/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Mock/python/VIS_CTI_AutoCTI_Mock/
cp -r $AUTOCTI_EDEN_PATH/autocti/mock/mock.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Mock/python/VIS_CTI_AutoCTI_Mock/
# cp -r $AUTOCTI_EDEN_PATH/autocti/mock/fixtures.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Mock/python/VIS_CTI_AutoCTI_Mock/
