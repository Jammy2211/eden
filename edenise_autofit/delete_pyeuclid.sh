echo
echo "------ delete_pyeuclid.sh ------"
echo
echo "Deleting old VIS_AutoFit project files"

### Clean VIS_AutoFit project files

rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_Mapper/python/VIS_AutoFit_Mapper/*
rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_Mapper/tests/python/*

rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_Prior/python/VIS_AutoFit_Prior/*
rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_Prior/tests/python/*

rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_PriorModel/python/VIS_AutoFit_PriorModel/*
rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_PriorModel/tests/python/*

rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_NonLinear/python/VIS_AutoFit_NonLinear/*
rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_NonLinear/tests/python/*

rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_Text/python/VIS_AutoFit_Text/*
rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_Text/tests/python/*

rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_Tools/python/VIS_AutoFit_Tools/*
rm -rf $PYEUCLID_AUTOFIT_PATH/VIS_AutoFit_Tools/tests/python/*