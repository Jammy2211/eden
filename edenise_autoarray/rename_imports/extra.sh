echo "Correcting autoarray.autoarray imports"

sed -i 's/from autoarray.autoarray/from autoarray/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "from autoconf -> from VIS_CTI_AutoConf_Conf"

sed -i 's/from autoconf/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoconf/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "exc imports"

sed -i 's/from autoarray import exc/from VIS_CTI_AutoArray_Util import exc/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import exc/from VIS_CTI_AutoArray_Util import exc/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "mock imports"

sed -i 's/from test_autoarray.mock/from VIS_CTI_AutoArray_Util.mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autoarray.mock/from VIS_CTI_AutoArray_Util.mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "removing decorator_util references"

sed -i 's/from autoarray import decorator_util//g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import decorator_util//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/@decorator_util.jit()//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/@decorator_util.jit()//g' $PYEUCLID_CTI_PATH/*.py

echo "Removing Typing"
sed -i 's/ -> typing.Union\[arrays.Values, list\]//g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/ -> typing.Union\[arrays.Values, list\]//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/ -> msk.Mask2D//g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/ -> msk.Mask2D//g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/"config"/"VIS_CTI_AutoArray_Util/test/files/config"/g' $PYEUCLID_CTI_PATH/*.py

sed -i 's:directory, "config":directory, "VIS_CTI_AutoArray_Util/tests/python/files/default":g' $PYEUCLID_CTI_PATH/*.py