echo "Copying autofit/mapper -> VIS_AutoFit_Mapper"

AUTO_SRC_PATH_MAPPER=$AUTOFIT_EDEN_PATH"/autofit/mapper"
VIS_SRC_PATH_MAPPER=$VIS_AUTOFIT_PATH"/VIS_AutoFit_Mapper/python/VIS_AutoFit_Mapper"

cp -r $AUTO_SRC_PATH_MAPPER/*.py $VIS_SRC_PATH_MAPPER/

AUTO_TEST_PATH_MAPPER=$AUTOFIT_EDEN_PATH"/test_autofit/unit/mapper"
VIS_TEST_PATH_MAPPER=$VIS_AUTOFIT_PATH"/VIS_AutoFit_Mapper/tests/python"

cp -r $AUTO_TEST_PATH_MAPPER/model/*.py $VIS_TEST_PATH_MAPPER/
rm -rf $VIS_TEST_PATH_MAPPER/__init__.py

