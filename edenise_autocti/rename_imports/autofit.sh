echo "autofit exc imports"
sed -i 's/from autofit import exc/from VIS_CTI_AutoFit_Tools import exc/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit import exc/from VIS_CTI_AutoFit_Tools import exc/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "autofit mock imports"
sed -i 's/from autofit.mock/from VIS_CTI_AutoFit_Mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.mock/from VIS_CTI_AutoFit_Mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "map from autofit.tools -> VIS_CTI_AutoFit_Tools"
sed -i 's/from autofit.tools/from VIS_CTI_AutoFit_Tools/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.tools/from VIS_CTI_AutoFit_Tools/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "map autofit.mapper.prior_model -> VIS_CTI_AutoFit_PriorModel"
sed -i 's/from autofit.mapper.prior_model/from VIS_CTI_AutoFit_PriorModel/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.mapper.prior_model/from VIS_CTI_AutoFit_PriorModel/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "map autofit.mapper -> VIS_CTI_AutoFit_Mapper"
sed -i 's/from autofit.mapper/from VIS_CTI_AutoFit_Mapper/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.mapper/from VIS_CTI_AutoFit_Mapper/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "map autofit.search.non_linear -> VIS_CTI_AutoFit_Non_Linear"
sed -i 's/from autofit.non_linear.nest/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autofit.non_linear/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.non_linear/from VIS_CTI_AutoFit_NonLinear/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
