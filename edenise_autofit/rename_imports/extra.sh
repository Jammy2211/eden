echo "Correcting autofit.autofit imports"

sed -i 's/from autofit.autofit/from autofit/g' $VIS_AUTOFIT_PATH/*/*/*/*.py


echo "exc imports"

sed -i 's/from autofit import exc/from VIS_AutoFit_Tools import exc/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autofit import exc/from VIS_AutoFit_Tools import exc/g' $VIS_AUTOFIT_PATH/*/*/*/*.py


echo "from autoconf -> from VIS_Conf"

sed -i 's/from autoconf/from VIS_Conf/g' $VIS_AUTOFIT_PATH/*.py
sed -i 's/from autoconf/from VIS_Conf/g' $VIS_AUTOFIT_PATH/*/*/*/*.py

sed -i 's/from typing_inspect import is_tuple_type//g' $VIS_AUTOFIT_PATH/*/*/*/*.py