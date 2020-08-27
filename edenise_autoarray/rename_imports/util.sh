echo "impot util -> VIS_AutoArray_Util"

sed -i 's/from autoarray import util/import VIS_AutoArray_Util as util/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import util/import VIS_AutoArray_Util as util/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.util/from VIS_AutoArray_Util/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.util/from VIS_AutoArray_Util/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from . import inversion_util as inversion//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from . import mapper_util as mapper//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from . import pixelization_util as pixelization//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from . import regularization_util as regularization//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from . import transformer_util as transformer//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py