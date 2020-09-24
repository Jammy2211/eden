echo "Copying autofit/tools/ -> VIS_CTI_AutoFit_Tools"

AUTO_SRC_PATH_TOOLS=$AUTOFIT_EDEN_PATH"/autofit/tools"
VIS_SRC_PATH_TOOLS=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoFit_Tools/python/VIS_CTI_AutoFit_Tools"

cp -r $AUTO_SRC_PATH_TOOLS/* $VIS_SRC_PATH_TOOLS/
rm $VIS_SRC_PATH_TOOLS/edenise.py
rm -rf $VIS_SRC_PATH_TOOLS/__init__.py

AUTO_TEST_PATH_TOOLS=$AUTOFIT_EDEN_PATH"/test_autofit/unit/tools"
VIS_TEST_PATH_TOOLS=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoFit_Tools/tests/python"

cp -r $AUTO_TEST_PATH_TOOLS/* $VIS_TEST_PATH_TOOLS/
rm $VIS_TEST_PATH_TOOLS/test_edenise.py