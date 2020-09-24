echo "impot util -> VIS_CTI_AutoArray_Util"

sed -i 's/from autoarray import util/import VIS_CTI_AutoArray_Util as util/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import util/import VIS_CTI_AutoArray_Util as util/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.util/from VIS_CTI_AutoArray_Util/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.util/from VIS_CTI_AutoArray_Util/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from . import inversion_util as inversion//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from . import mapper_util as mapper//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from . import pixelization_util as pixelization//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from . import regularization_util as regularization//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from . import transformer_util as transformer//g' $PYEUCLID_CTI_PATH/*/*/*/*.py