echo "map autofit.mapper.prior -> VIS_CTI_AutoFit_Prior"

sed -i 's/from autofit.mapper.prior import Prior/from VIS_CTI_AutoFit_Prior.prior import Prior/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.mapper.prior import Prior/from VIS_CTI_AutoFit_Prior.prior import Prior/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autofit.mapper.prior/from VIS_CTI_AutoFit_Prior/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.mapper.prior/from VIS_CTI_AutoFit_Prior/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autofit.mapper import prior/import VIS_CTI_AutoFit_Prior as prior/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit.mapper import prior/import VIS_CTI_AutoFit_Prior as prior/g' $PYEUCLID_CTI_PATH/*/*/*/*.py