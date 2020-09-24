echo "impot plot -> VIS_CTI_AutoArray_Plot"

sed -i 's/from autoarray import plot/import VIS_CTI_AutoArray_Plot as plot/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray import plot/import VIS_CTI_AutoArray_Plot as plot/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from autoarray.plot/from VIS_CTI_AutoArray_Plot/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/from autoarray.plot/from VIS_CTI_AutoArray_Plot/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/import autoarray.plot as aplt/import VIS_CTI_AutoArray_Plot as aplt/g' $PYEUCLID_CTI_PATH/*.py
sed -i 's/import autoarray.plot as aplt/import VIS_CTI_AutoArray_Plot as aplt/g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from VIS_CTI_AutoArray_Plot import interferometer_plots as Interferometer//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from VIS_CTI_AutoArray_Plot import fit_interferometer_plots as FitInterferometer//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from VIS_CTI_AutoArray_Plot import mapper_plots as Mapper//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/from VIS_CTI_AutoArray_Plot import inversion_plots as Inversion//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/import colorcet//g' $PYEUCLID_CTI_PATH/*/*/*/*.py
sed -i 's/colorcet.cm\[cmap\]/cmap/g' $PYEUCLID_CTI_PATH/*/*/*/*.py