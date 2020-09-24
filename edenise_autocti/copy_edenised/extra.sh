echo "Copying exc.py, mock.py and conftest.py files from autocti to VIS_CTI main path"
cp -r $AUTOCTI_EDEN_PATH/autocti/exc.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Util/python/VIS_CTI_AutoCTI_Util/exc.py
cp -r $AUTOCTI_EDEN_PATH/test_autocti/mock.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Util/python/VIS_CTI_AutoCTI_Util/mock.py
cp -r $AUTOCTI_EDEN_PATH/test_autocti/conftest.py $PYEUCLID_CTI_PATH/ac_conftest.py

echo "Copying default configs from autocti unit test directory to VIS_CTI_AutoFit_Conf tests directory"
#mkdir $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Pipeline/tests/python/files
#mkdir $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Pipeline/tests/python/files/default
#cp -r $AUTOCTI_EDEN_PATH/test_autocti/unit/config $PYEUCLID_CTI_PATH/VIS_CTI_AutoCTI_Pipeline/tests/python/files/default/