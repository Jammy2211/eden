echo "Copying autofit/mapper/prior -> VIS_AutoFit_Prior"

AUTO_SRC_PATH_PRIOR=$AUTOFIT_EDEN_PATH"/autofit/mapper/prior"
VIS_SRC_PATH_PRIOR=$VIS_AUTOFIT_PATH"/VIS_AutoFit_Prior/python/VIS_AutoFit_Prior"

cp -r $AUTO_SRC_PATH_PRIOR/* $VIS_SRC_PATH_PRIOR/

AUTO_TEST_PATH_MAPPER=$AUTOFIT_EDEN_PATH"/test_autofit/unit/mapper"
VIS_TEST_PATH_PRIOR=$VIS_AUTOFIT_PATH"/VIS_AutoFit_Prior/tests/python"

cp -r $AUTO_TEST_PATH_MAPPER/*.py $VIS_TEST_PATH_PRIOR/
cp -r $AUTO_TEST_PATH_MAPPER/promise/*.py $VIS_TEST_PATH_PRIOR/
mkdir $VIS_TEST_PATH_PRIOR/files/
cp -r $AUTOFIT_EDEN_PATH/test_autofit/unit/config $VIS_TEST_PATH_PRIOR/files/
rm -rf $VIS_TEST_PATH_PRIOR/__init__.py