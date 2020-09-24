echo "Copying autofit/mapper/prior_model -> VIS_CTI_AutoFit_PriorModel"

AUTO_SRC_PATH_PRIORMODEL=$AUTOFIT_EDEN_PATH"/autofit/mapper/prior_model"
VIS_SRC_PATH_PRIORMODEL=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoFit_PriorModel/python/VIS_CTI_AutoFit_PriorModel"

cp -r $AUTO_SRC_PATH_PRIORMODEL/* $VIS_SRC_PATH_PRIORMODEL/

AUTO_TEST_PATH_MAPPER=$AUTOFIT_EDEN_PATH"/test_autofit/unit/mapper"
VIS_TEST_PATH_PRIORMODEL=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoFit_PriorModel/tests/python"

cp -r $AUTOFIT_EDEN_PATH/test_autofit/unit/mapper/model/test_prior_model.py $VIS_TEST_PATH_PRIORMODEL/
rm $PYEUCLID_CTI_PATH/VIS_CTI_AutoFit_Mapper/tests/python/test_prior_model.py
rm -rf $VIS_TEST_PATH_PRIORMODEL/__init__.py