
echo
echo "------ delete_pyeuclid.sh ------"
echo
echo "Deleting old VIS_AutoArray project files"

mv -i $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mask/python/VIS_CTI_AutoArray_Mask/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mask/python/
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mask/python/VIS_CTI_AutoArray_Mask/*
mv -i $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mask/python/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mask/python/VIS_CTI_AutoArray_Mask/
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mask/tests/python/*

mv -i $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Array/python/VIS_CTI_AutoArray_Array/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Array/python/
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Array/python/VIS_CTI_AutoArray_Array/*
mv -i $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Array/python/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Array/python/VIS_CTI_AutoArray_Array/
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Array/tests/python/*

mv $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Frame/python/VIS_CTI_AutoArray_Frame/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Frame/python/
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Frame/python/VIS_CTI_AutoArray_Frame/*
mv $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Frame/python/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Frame/python/VIS_CTI_AutoArray_Frame
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Frame/tests/python/*

mv $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Grid/python/VIS_CTI_AutoArray_Grid/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Grid/python/
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Grid/python/VIS_CTI_AutoArray_Grid/*
mv $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Grid/python/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Grid/python/VIS_CTI_AutoArray_Grid
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Grid/tests/python/*

rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Dataset/python/VIS_CTI_AutoArray_Dataset/*
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Dataset/tests/python/*

rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Fit/python/VIS_CTI_AutoArray_Fit/*
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Fit/tests/python/*

rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Instruments/python/VIS_CTI_AutoArray_Instruments/*
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Instruments/tests/python/*

# rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Mock/python/VIS_CTI_AutoArray_Mock/*

rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Operators/python/VIS_CTI_AutoArray_Operators/*
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Operators/tests/python/*

mv $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/python/VIS_CTI_AutoArray_Plot/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/python/
mv $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/python/VIS_CTI_AutoArray_Plot/plotters.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/python/
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/python/VIS_CTI_AutoArray_Plot/*
mv $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/python/__init__.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/python/VIS_CTI_AutoArray_Plot/
mv $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/python/plotters.py $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/python/VIS_CTI_AutoArray_Plot/
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Plot/tests/python/*

rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Util/python/VIS_CTI_AutoArray_Util/*
rm -rf $PYEUCLID_CTI_PATH/VIS_CTI_AutoArray_Util/tests/python/*
