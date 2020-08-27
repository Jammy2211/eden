echo "import arctic -> import VIS_CTI_Arctic"

sed -i 's/from arcticpy/from VIS_CTI_Arctic/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from arcticpy/from VIS_CTI_Arctic/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/import arcticpy as ac/import VIS_CTI_Arctic as ac/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/import arcticpy as ac/import VIS_CTI_Arctic as ac/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/from autocti.arcticpy/from VIS_CTI_Arctic/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/from autocti.arcticpy/from VIS_CTI_Arctic/g' $VIS_AUTOCTI_PATH/*/*/*/*.py
sed -i 's/import autocti.arcticpy as ac/import VIS_CTI_Arctic as ac/g' $VIS_AUTOCTI_PATH/*.py
sed -i 's/import autocti.arcticpy as ac/import VIS_CTI_Arctic as ac/g' $VIS_AUTOCTI_PATH/*/*/*/*.py