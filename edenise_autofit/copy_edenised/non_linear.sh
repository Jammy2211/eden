echo "Copying non_linear module to VIS_CTI_AutoFit_NonLinear"

AUTO_SRC_PATH_NONLINEAR=$AUTOFIT_EDEN_PATH"/autofit/non_linear"
VIS_SRC_PATH_NONLINEAR=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoFit_NonLinear/python/VIS_CTI_AutoFit_NonLinear"

cp -r $AUTO_SRC_PATH_NONLINEAR/abstract_search.py $VIS_SRC_PATH_NONLINEAR/
cp -r $AUTO_SRC_PATH_NONLINEAR/initializer.py $VIS_SRC_PATH_NONLINEAR/
cp -r $AUTO_SRC_PATH_NONLINEAR/grid_search.py $VIS_SRC_PATH_NONLINEAR/
cp -r $AUTO_SRC_PATH_NONLINEAR/log.py $VIS_SRC_PATH_NONLINEAR/
cp -r $AUTO_SRC_PATH_NONLINEAR/paths.py $VIS_SRC_PATH_NONLINEAR/
cp -r $AUTO_SRC_PATH_NONLINEAR/samples.py $VIS_SRC_PATH_NONLINEAR/
cp -r $AUTO_SRC_PATH_NONLINEAR/timer.py $VIS_SRC_PATH_NONLINEAR/
cp -r $AUTO_SRC_PATH_NONLINEAR/mcmc/abstract_mcmc.py $VIS_SRC_PATH_NONLINEAR/
cp -r $AUTO_SRC_PATH_NONLINEAR/nest/abstract_nest.py $VIS_SRC_PATH_NONLINEAR/
cp -r $AUTO_SRC_PATH_NONLINEAR/nest/multi_nest.py $VIS_SRC_PATH_NONLINEAR/

AUTO_TEST_PATH_NONLINEAR=$AUTOFIT_EDEN_PATH"/test_autofit/unit/non_linear"
VIS_TEST_PATH_NONLINEAR=$PYEUCLID_CTI_PATH"/VIS_CTI_AutoFit_NonLinear/tests/python"

cp -r $AUTO_TEST_PATH_NONLINEAR/files $VIS_TEST_PATH_NONLINEAR/
cp -r $AUTO_TEST_PATH_NONLINEAR/test_abstract_search.py $VIS_TEST_PATH_NONLINEAR/
cp -r $AUTO_TEST_PATH_NONLINEAR/test_initializer.py $VIS_TEST_PATH_NONLINEAR/
cp -r $AUTO_TEST_PATH_NONLINEAR/test_paths.py $VIS_TEST_PATH_NONLINEAR/
cp -r $AUTO_TEST_PATH_NONLINEAR/test_samples.py $VIS_TEST_PATH_NONLINEAR/
cp -r $AUTO_TEST_PATH_NONLINEAR/mcmc/files $VIS_TEST_PATH_NONLINEAR/
cp -r $AUTO_TEST_PATH_NONLINEAR/nest/files $VIS_TEST_PATH_NONLINEAR/
cp -r $AUTO_TEST_PATH_NONLINEAR/nest/test_multi_nest.py $VIS_TEST_PATH_NONLINEAR/
rm -rf $VIS_TEST_PATH_NONLINEAR/__init__.py