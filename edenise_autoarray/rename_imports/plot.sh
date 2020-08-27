echo "impot plot -> VIS_AutoArray_Plot"

sed -i 's/from autoarray import plot/import VIS_AutoArray_Plot as plot/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray import plot/import VIS_AutoArray_Plot as plot/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from autoarray.plot/from VIS_AutoArray_Plot/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/from autoarray.plot/from VIS_AutoArray_Plot/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/import autoarray.plot as aplt/import VIS_AutoArray_Plot as aplt/g' $VIS_AUTOARRAY_PATH/*.py
sed -i 's/import autoarray.plot as aplt/import VIS_AutoArray_Plot as aplt/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from VIS_AutoArray_Plot import interferometer_plots as Interferometer//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from VIS_AutoArray_Plot import fit_interferometer_plots as FitInterferometer//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from VIS_AutoArray_Plot import mapper_plots as Mapper//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/from VIS_AutoArray_Plot import inversion_plots as Inversion//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/import colorcet//g' $VIS_AUTOARRAY_PATH/*/*/*/*.py
sed -i 's/colorcet.cm\[cmap\]/cmap/g' $VIS_AUTOARRAY_PATH/*/*/*/*.py