PyAuto # Loads Virtual Enviroment

PYAUTO_PATH="/home/jammy/PycharmProjects/PyAuto"
PYAUTOCONF_PATH=$PYAUTO_PATH"/PyAutoConf"
PYAUTOFIT_PATH=$PYAUTO_PATH"/PyAutoFit"
PYAUTOARRAY_PATH=$PYAUTO_PATH"/PyAutoArray"
PYAUTOCTI_PATH=$PYAUTO_PATH"/PyAutoCTI"
EDEN_PATH=$PYAUTO_PATH"/eden"

PYEUCLID_PATH="/home/jammy/PycharmProjects/PyEuclid"
PYEUCLID_AUTOCONF_PATH="/home/jammy/PycharmProjects/PyEuclid/VIS_AutoConf"
PYEUCLID_AUTOFIT_PATH="/home/jammy/PycharmProjects/PyEuclid/VIS_AutoFit"
PYEUCLID_AUTOARRAY_PATH="/home/jammy/PycharmProjects/PyEuclid/VIS_AutoArray"
PYEUCLID_CTI_PATH="/home/jammy/PycharmProjects/PyEuclid/VIS_CTI"

source $EDEN_PATH"/edenise_autoconf.sh"
source $EDEN_PATH"/edenise_autofit.sh"
source $EDEN_PATH"/edenise_autoarray.sh"
source $EDEN_PATH"/edenise_autocti.sh"

# Permissions

chmod -R 777 $PYEUCLID_PATH/VIS_AutoFit
chmod -R 777 $PYEUCLID_PATH/VIS_AutoFit/*
chmod -R 777 $PYEUCLID_PATH/VIS_AutoFit/*/*
chmod -R 777 $PYEUCLID_PATH/VIS_AutoFit/*/*/*
chmod -R 777 $PYEUCLID_PATH/VIS_AutoFit/*/*/*/*
chmod -R 777 $PYEUCLID_PATH/VIS_AutoFit/*/*/*/*/*
chmod -R 777 $PYEUCLID_PATH/VIS_AutoFit/*/*/*/*/*/*