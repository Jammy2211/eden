echo "impot util -> VIS_CTI_Util"

sed -i 's/from autocti import util/import VIS_AutoArray_Util as util/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti import util/import VIS_AutoArray_Util as util/g' $VIS_AUTOCTI_PATH/*/*/*/*.py