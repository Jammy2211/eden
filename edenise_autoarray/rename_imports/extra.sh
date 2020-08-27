echo "Correcting autoarray.autoarray imports"

sed -i 's/from autoarray.autoarray/from autoarray/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py

echo "from autoconf -> from VIS_Conf"

sed -i 's/from autoconf/from VIS_Conf/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoconf/from VIS_Conf/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py

echo "exc imports"

sed -i 's/from autoarray import exc/from VIS_AutoArray_Util import exc/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import exc/from VIS_AutoArray_Util import exc/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py

echo "mock imports"

sed -i 's/from test_autoarray.mock/from VIS_AutoArray_Util.mock/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from test_autoarray.mock/from VIS_AutoArray_Util.mock/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py

echo "removing decorator_util references"

sed -i 's/from autoarray import decorator_util//g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import decorator_util//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/@decorator_util.jit()//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/@decorator_util.jit()//g' $VIS_AUTOARRAY_PATH/*.py

echo "Removing Typing"
sed -i 's/ -> typing.Union\[arrays.Values, list\]//g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/ -> typing.Union\[arrays.Values, list\]//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/ -> msk.Mask//g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/ -> msk.Mask//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py

sed -i 's/"config"/"VIS_AutoArray_Util/test/files/config"/g' $VIS_AUTOARRAY_PATH/*.py

sed -i 's:directory, "config":directory, "VIS_AutoArray_Util/tests/python/files/default":g' $VIS_AUTOARRAY_PATH/*.py