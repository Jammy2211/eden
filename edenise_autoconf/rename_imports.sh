### Module Mappings

# autoconf/ -> VIS_CTI

echo
echo "------ rename_imports.sh ------"
echo

echo "Updating autoconf imports"
sed -i 's/from autoconf.autoconf/from autoconf/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoconf/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/import autoconf/import VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/return autoconf/return VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from test_autoconf/from VIS_CTI_AutoConf_Conf.tests/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoconf.mock/from VIS_CTI_AutoConf_Conf.mock/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from VIS_CTI_AutoConf_Conf.autoconf import exc/from VIS_CTI_AutoConf_Conf import exc/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from VIS_CTI_AutoConf_Conf.mock_real/from VIS_CTI_AutoConf_Conf.mock_real/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from VIS_CTI_AutoConf_Conf.json_prior/from VIS_CTI_AutoConf_Conf/g' $PYEUCLID_CTI_PATH/*/*/*/*.py