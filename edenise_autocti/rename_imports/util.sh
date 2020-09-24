echo "impot util -> VIS_CTI_AutoCTI_Util"

sed -i 's/from autocti import util/import VIS_CTI_AutoCTI_Util as util/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti import util/import VIS_CTI_AutoCTI_Util as util/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.autocti.util/from VIS_CTI_AutoCTI_Util/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.autocti.util/from VIS_CTI_AutoCTI_Util/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.util/from VIS_CTI_AutoCTI_Util/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.util/from VIS_CTI_AutoCTI_Util/g' $PYEUCLID_CTI_PATH/*/*/*/*.py