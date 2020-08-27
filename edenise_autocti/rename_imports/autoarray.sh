echo "autoarray import"

sed -i 's/from autocti.autoarray/from autoarray/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.autoarray/from autoarray/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.mask/from VIS_AutoArray_Mask/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.mask/from VIS_AutoArray_Mask/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures.arrays import abstract_array/from VIS_AutoArray_Array import abstract_array/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.structures.arrays import abstract_array/from VIS_AutoArray_Array import abstract_array/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.grids import abstract_grid/from VIS_AutoArray_Grid import abstract_grid/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.structures.grids import abstract_grid/from VIS_AutoArray_Grid import abstract_grid/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.structures.frames import abstract_frame/from VIS_AutoArray_Frame import abstract_frame/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.structures.frames import abstract_frame/from VIS_AutoArray_Frame import abstract_frame/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures import arrays/import VIS_AutoArray_Array as arrays/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.structures import arrays/import VIS_AutoArray_Array as arrays/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures.grids/import VIS_AutoArray_Grid as grids/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.structures.grids/import VIS_AutoArray_Grid as grids/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures.frames.abstract_frame/from VIS_AutoArray_Frame.abstract_frame/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.structures.frames.abstract_frame/from VIS_AutoArray_Frame.abstract_frame/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures.frames/import VIS_AutoArray_Frame as frames/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.structures.frames/import VIS_AutoArray_Frame as frames/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.structures/from VIS_AutoArray_Array/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.structures/from VIS_AutoArray_Array/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.dataset/from VIS_AutoArray_Dataset/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.dataset/from VIS_AutoArray_Dataset/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.fit/from VIS_AutoArray_Fit/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.fit/from VIS_AutoArray_Fit/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.instruments/from VIS_AutoArray_Instruments/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.instruments/from VIS_AutoArray_Instruments/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.plot/from VIS_AutoArray_Plot/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.plot/from VIS_AutoArray_Plot/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autoarray.util/from VIS_AutoArray_Util/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.util/from VIS_AutoArray_Util/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "autoarray exc imports"
sed -i 's/from autoarray import exc/from VIS_AutoArray_Util import exc/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray import exc/from VIS_AutoArray_Util import exc/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.exc/from VIS_AutoArray_Util.exc/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autoarray.exc/from VIS_AutoArray_Util.exc/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "autoarray mock imports"
sed -i 's/from test_autoarray import mock/from VIS_AutoArray_Util import mock/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from test_autoarray import mock/from VIS_AutoArray_Util import mock/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from test_autoarray.mock/from VIS_AutoArray_Util.mock/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from test_autoarray.mock/from VIS_AutoArray_Util.mock/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

echo "autoarray conftest imports"
sed -i 's/from test_autoarray import conftest/from VIS_AutoArray import conftest/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from test_autoarray import conftest/from VIS_AutoArray import conftest/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from test_autoarray.conftest/from VIS_AutoArray.conftest/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from test_autoarray.conftest/from VIS_AutoArray.conftest/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from test_autoarray.unit.conftest/from VIS_AutoArray.conftest/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from test_autoarray.unit.conftest/from VIS_AutoArray.conftest/g' $VIS_AUTOCTI_PATH/*/*/*/*.py

sed -i 's/from autocti.autoarray.structures.frames/from VIS_AutoArray_Frame/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.autoarray.structures.frames/from VIS_AutoArray_Frame/g' $VIS_AUTOCTI_PATH/*/*/*/*.py