echo "Correcting autofit.autofit imports"

sed -i 's/from autofit.autofit/from autofit/g' $PYEUCLID_CTI_PATH/*/*/*/*.py


echo "exc imports"

sed -i 's/from autofit import exc/from VIS_CTI_AutoFit_Tools import exc/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autofit import exc/from VIS_CTI_AutoFit_Tools import exc/g' $PYEUCLID_CTI_PATH/*/*/*/*.py


echo "from autoconf -> from VIS_CTI_AutoConf_Conf"

sed -i 's/from autoconf/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoconf/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from typing_inspect import is_tuple_type//g' $PYEUCLID_CTI_PATH/*/*/*/*.py