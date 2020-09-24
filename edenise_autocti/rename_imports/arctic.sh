echo "import arctic -> import VIS_CTI_AutoCTI_Arctic"

sed -i 's/from autoarray.instruments import acs//g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.instruments import acs//g' $PYEUCLID_CTI_PATH/*/*/*/*.py

sed -i 's/from arcticpy/from VIS_CTI_AutoCTI_Arctic/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from arcticpy/from VIS_CTI_AutoCTI_Arctic/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/import arcticpy as ac/import VIS_CTI_AutoCTI_Arctic as ac/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/import arcticpy as ac/import VIS_CTI_AutoCTI_Arctic as ac/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autocti.arcticpy/from VIS_CTI_AutoCTI_Arctic/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autocti.arcticpy/from VIS_CTI_AutoCTI_Arctic/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/import autocti.arcticpy as ac/import VIS_CTI_AutoCTI_Arctic as ac/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/import autocti.arcticpy as ac/import VIS_CTI_AutoCTI_Arctic as ac/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/WrapWrap/Wrap/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/WrapWrap/Wrap/g' $PYEUCLID_CTI_PATH/*/*/*/*.py