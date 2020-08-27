AUTOFIT_EDEN_PATH=$EDEN_PATH"/autofit_eden"
VIS_AUTOFIT_PATH=$PYEUCLID_PATH"/VIS_AutoFit"

echo "Copying exc.py, mock.py and conftest.py files from autofit to VIS_AutoFit main path"
cp -r $AUTOFIT_EDEN_PATH/autofit/exc.py $VIS_AUTOFIT_PATH/VIS_AutoFit_Tools/python/VIS_AutoFit_Tools/exc.py
cp -r $AUTOFIT_EDEN_PATH/test_autofit/mock.py $VIS_AUTOFIT_PATH/VIS_AutoFit_Tools/python/VIS_AutoFit_Tools/mock.py
cp -r $AUTOFIT_EDEN_PATH/test_autofit/mock_real.py $VIS_AUTOFIT_PATH/VIS_AutoFit_Tools/python/VIS_AutoFit_Tools/mock_real.py
cp -r $AUTOFIT_EDEN_PATH/test_autofit/conftest.py $VIS_AUTOFIT_PATH/conftest.py

echo "Copying default configs from autofit unit test directory to VIS_AutoFit_Conf tests directory"
mkdir $VIS_AUTOFIT_PATH/VIS_AutoFit_Tools/tests/python/files
mkdir $VIS_AUTOFIT_PATH/VIS_AutoFit_Tools/tests/python/files/default/
cp -r $AUTOFIT_EDEN_PATH/test_autofit/unit/config $VIS_AUTOFIT_PATH/VIS_AutoFit_Tools/tests/python/files/default/