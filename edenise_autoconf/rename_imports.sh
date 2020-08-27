### Module Mappings

# autoconf/ -> VIS_AutoConf

echo
echo "------ rename_imports.sh ------"
echo

VIS_AUTOCONF_PATH=$PYEUCLID_PATH"/VIS_AutoConf"

echo "Updating autoconf imports"
sed -i 's/from autoconf.autoconf/from autoconf/g' $VIS_AUTOCONF_PATH/*/*/*/*.py
sed -i 's/from autoconf/from VIS_Conf/g' $VIS_AUTOCONF_PATH/*/*/*/*.py
sed -i 's/import autoconf/import VIS_Conf/g' $VIS_AUTOCONF_PATH/*/*/*/*.py
sed -i 's/return autoconf/return VIS_Conf/g' $VIS_AUTOCONF_PATH/*/*/*/*.py
sed -i 's/from test_autoconf/from VIS_Conf.tests/g' $VIS_AUTOCONF_PATH/*/*/*/*.py
sed -i 's/from test_autoconf.mock/from mock/g' $VIS_AUTOCONF_PATH/*/*/*/*.py
sed -i 's/from VIS_Conf.autoconf import exc/from VIS_Conf import exc/g' $VIS_AUTOCONF_PATH/*/*/*/*.py
sed -i 's/from VIS_Conf.tests.mock_real/from VIS_Conf.mock_real/g' $VIS_AUTOCONF_PATH/*/*/*/*.py
sed -i 's/from VIS_Conf.json_prior/from VIS_Conf/g' $VIS_AUTOCONF_PATH/*/*/*/*.py