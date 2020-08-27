echo "Copying exc.py, mock.py and conftest.py files from autocti to VIS_CTI main path"
cp -r $AUTOCTI_EDEN_PATH/autocti/exc.py $VIS_AUTOCTI_PATH/VIS_CTI_Util/python/VIS_CTI_Util/exc.py
cp -r $AUTOCTI_EDEN_PATH/test_autocti/mock.py $VIS_AUTOCTI_PATH/VIS_CTI_Util/python/VIS_CTI_Util/mock.py
cp -r $AUTOCTI_EDEN_PATH/test_autocti/conftest.py $VIS_AUTOCTI_PATH/conftest.py

echo "Copying default configs from autocti unit test directory to VIS_AutoFit_Conf tests directory"
mkdir $VIS_AUTOCTI_PATH/VIS_CTI_Pipeline/tests/python/files
mkdir $VIS_AUTOCTI_PATH/VIS_CTI_Pipeline/tests/python/files/default
cp -r $AUTOCTI_EDEN_PATH/test_autocti/unit/config $VIS_AUTOCTI_PATH/VIS_CTI_Pipeline/tests/python/files/default/