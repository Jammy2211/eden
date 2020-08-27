echo "Copying autofit/text/ -> VIS_AutoFit_Text"

AUTO_SRC_PATH_TEXT=$AUTOFIT_EDEN_PATH"/autofit/text"
VIS_SRC_PATH_TEXT=$VIS_AUTOFIT_PATH"/VIS_AutoFit_Text/python/VIS_AutoFit_Text"

cp -r $AUTO_SRC_PATH_TEXT/* $VIS_SRC_PATH_TEXT/

AUTO_TEST_PATH_TEXT=$AUTOFIT_EDEN_PATH"/test_autofit/unit/text"
VIS_TEST_PATH_TEXT=$VIS_AUTOFIT_PATH"/VIS_AutoFit_Text/tests/python"

cp -r $AUTO_TEST_PATH_TEXT/* $VIS_TEST_PATH_TEXT/
rm -rf $VIS_TEST_PATH_TEXT/__init__.py