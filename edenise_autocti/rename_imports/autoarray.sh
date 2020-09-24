echo "autoarray import"

sed -i 's/from autocti.autoarray/from autoarray/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.autoarray/from autoarray/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.mask/from VIS_CTI_AutoArray_Mask/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.mask/from VIS_CTI_AutoArray_Mask/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures.arrays import abstract_array/from VIS_CTI_AutoArray_Array import abstract_array/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.arrays import abstract_array/from VIS_CTI_AutoArray_Array import abstract_array/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.grids import abstract_grid/from VIS_CTI_AutoArray_Grid import abstract_grid/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.grids import abstract_grid/from VIS_CTI_AutoArray_Grid import abstract_grid/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.frames import abstract_frame/from VIS_CTI_AutoArray_Frame import abstract_frame/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.frames import abstract_frame/from VIS_CTI_AutoArray_Frame import abstract_frame/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures import arrays/import VIS_CTI_AutoArray_Array as arrays/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures import arrays/import VIS_CTI_AutoArray_Array as arrays/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures.grids/import VIS_CTI_AutoArray_Grid as grids/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.grids/import VIS_CTI_AutoArray_Grid as grids/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures.frames.abstract_frame/from VIS_CTI_AutoArray_Frame.abstract_frame/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.frames.abstract_frame/from VIS_CTI_AutoArray_Frame.abstract_frame/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures.frames/import VIS_CTI_AutoArray_Frame as frames/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures.frames/import VIS_CTI_AutoArray_Frame as frames/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures/from VIS_CTI_AutoArray_Array/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.structures/from VIS_CTI_AutoArray_Array/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.dataset/from VIS_CTI_AutoArray_Dataset/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.dataset/from VIS_CTI_AutoArray_Dataset/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.fit/from VIS_CTI_AutoArray_Fit/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.fit/from VIS_CTI_AutoArray_Fit/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.instruments/from VIS_CTI_AutoArray_Instruments/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.instruments/from VIS_CTI_AutoArray_Instruments/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.plot/from VIS_CTI_AutoArray_Plot/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.plot/from VIS_CTI_AutoArray_Plot/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.util/from VIS_CTI_AutoArray_Util/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.util/from VIS_CTI_AutoArray_Util/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "autoarray exc imports"
sed -i 's/from autoarray import exc/from VIS_CTI_AutoArray_Util import exc/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import exc/from VIS_CTI_AutoArray_Util import exc/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.exc/from VIS_CTI_AutoArray_Util.exc/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.exc/from VIS_CTI_AutoArray_Util.exc/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "autoarray mock imports"
sed -i 's/from test_autoarray import mock/from VIS_CTI_AutoArray_Util import mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autoarray import mock/from VIS_CTI_AutoArray_Util import mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from test_autoarray.mock/from VIS_CTI_AutoArray_Util.mock/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autoarray.mock/from VIS_CTI_AutoArray_Util.mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

echo "autoarray conftest imports"
sed -i 's/from test_autoarray import conftest/from VIS_AutoArray import conftest/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autoarray import conftest/from VIS_AutoArray import conftest/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from test_autoarray.conftest/from VIS_AutoArray.conftest/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autoarray.conftest/from VIS_AutoArray.conftest/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from test_autoarray.unit.conftest/from VIS_AutoArray.conftest/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from test_autoarray.unit.conftest/from VIS_AutoArray.conftest/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from autocti.autoarray.structures.frames/from VIS_CTI_AutoArray_Frame/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.autoarray.structures.frames/from VIS_CTI_AutoArray_Frame/g' $PYEUCLID_CTI_PATH/*/*/*/*.py