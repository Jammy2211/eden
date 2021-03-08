import datetime
import glob
import os
import re
import shutil
import subprocess
import json
from distutils.dir_util import copy_tree
import fileinput

BUILD_PATH = os.getcwd()

EDEN_PATH = f"{os.getcwd()}/../eden"
VIS_CTI_PATH = f"{os.getcwd()}/../VIS_CTI"

replace_dict = {
    "from autoarray import decorator_util": " ",
    "@decorator_util.jit()": " ",
    "from autoarray.inversion import pixelization_util as pixelization": " ",
    "from autoarray.inversion import mapper_util as mapper": " ",
    "from autoarray.inversion import regularization_util as regularization": " ",
    "from autoarray.inversion import inversion_util as inversion": " ",
    "from autoarray.operators import transformer_util as transformer": " ",
    "from autoarray.inversion import pixelizations": " ",
    "from autoarray.inversion import pixelization_util": " ",
    "from autoarray.inversion import mappers": " ",
    "from autoarray.inversion import mapper_util": " ",
    "from autoarray.inversion import regularization": " ",
    "from autoarray.inversion import regularization_util": " ",
    "from autoarray.inversion import inversions": " ",
    "from autoarray.inversion import inversion_util": " ",
}

autoarray_dict = {
    "from autoconf.mock_real": "from VIS_CTI_AutoConf_Conf.mock.mock_real",
    "from autoconf.json_prior": "from VIS_CTI_AutoConf_Conf",
    "autoconf": "VIS_CTI_AutoConf_Conf",
    "from autoarray import exc": "from VIS_CTI_AutoArray_Util import exc",
    "from autoarray.structures import" : "from VIS_CTI_AutoArray_Array import",
    "from autoarray.structures.arrays.one_d": "from VIS_CTI_AutoArray_Array",
    "from autoarray.structures.arrays.two_d": "from VIS_CTI_AutoArray_Array",
    "from autoarray.structures.arrays" : "from VIS_CTI_AutoArray_Array",
    "from autoarray.structures.grids.one_d": "from VIS_CTI_AutoArray_Grid",
    "from autoarray.structures.grids.two_d": "from VIS_CTI_AutoArray_Grid",
    "from autoarray.structures.grids": "from VIS_CTI_AutoArray_Grid",
    "from autoarray.structures.frames": "from VIS_CTI_AutoArray_Frame",
    "from autoarray.structures.vector_fields": "from VIS_CTI_AutoArray_VectorField",
    "from autoarray.structures": "from VIS_CTI_AutoArray_Array",
    "from autoarray.dataset": "from VIS_CTI_AutoArray_Dataset",
    "from autoarray.fit": "from VIS_CTI_AutoArray_Fit",
    "from autoarray.geometry": "from VIS_CTI_AutoArray_Geometry",
    "from autoarray.instruments": "from VIS_CTI_AutoArray_Instruments",
    "from autoarray.mask": "from VIS_CTI_AutoArray_Mask",
    "from autoarray.mock": "from VIS_CTI_AutoArray_Mock",
    "from autoarray.operators": "from VIS_CTI_AutoArray_Operators",
    "from autoarray.plot.mat_wrap.wrap": "from VIS_CTI_AutoArray_Plot",
    "from autoarray.plot.mat_wrap": "from VIS_CTI_AutoArray_Plot",
    "from autoarray.plot.plotters": "from VIS_CTI_AutoArray_Plot",
    "from autoarray.plot": "from VIS_CTI_AutoArray_Plot",
    "import autoarray.plot": "import VIS_CTI_AutoArray_Plot",
    "from autoarray import util": "import VIS_CTI_AutoArray_Util as util",
}


autofit_dict = {
    "from autofit import exc": "from VIS_CTI_AutoFit_Tools import exc",
    "from autofit.mapper.prior_model": "from VIS_CTI_AutoFit_PriorModel",
    "from autofit.mapper.prior": "from VIS_CTI_AutoFit_Prior",
    "from autofit.mapper": "from VIS_CTI_AutoFit_Mapper",
    "from autofit.mock import mock": "from VIS_CTI_AutoFit_Mock import mock",
    "from autofit.mock": "from VIS_CTI_AutoFit_Mock",
    "from autofit.non_linear.mcmc" : "from VIS_CTI_AutoFit_NonLinear",
    "from autofit.non_linear.nest": "from VIS_CTI_AutoFit_NonLinear",
    "from autofit.non_linear.grid": "from VIS_CTI_AutoFit_NonLinear",
    "from autofit.non_linear": "from VIS_CTI_AutoFit_NonLinear",
    "from autofit.text" : "from VIS_CTI_AutoFit_Text",
    "from autofit.tools" : "from VIS_CTI_AutoFit_Tools"
}

autocti_dict = {
    "from autocti import exc" : "from VIS_CTI_AutoCTI_Util import exc",
    "from autocti.charge_injection" : "from VIS_CTI_AutoCTI_CI",
    "from autocti import charge_injection" : "import VIS_CTI_AutoCTI_CI",
    "charge_injection." : "VIS_CTI_AutoCTI_CI.",
    "from autocti.mask": "from VIS_CTI_AutoCTI_Mask",
    "from autocti.mock": "from VIS_CTI_AutoCTI_Mock",
    "from autocti.autoarray.structures.region" : "from VIS_CTI_AutoArray_Array.region",
    "from autocti.autoarray.structures.arrays": "from VIS_CTI_AutoArray_Array",
    "from autocti.autoarray.structures.frames": "from VIS_CTI_AutoArray_Frame",
    "from autocti.pipeline.phase.settings": "from VIS_CTI_AutoCTI_Pipeline.settings",
    "from autocti.pipeline.phase import extensions" : "import VIS_CTI_AutoCTI_Phase_Extensions as extensions",
    "from autocti.pipeline.phase.extensions" : "from VIS_CTI_AutoCTI_Phase_Extensions",
 #   "from autocti.pipeline.phase.settings" : "from VIS_CTI_AutoCTI_Pipeline import settings",
  #  "from autocti.autoarray.structures" : "from VIS_CTI_AutoCTI_Structures",
    "from autocti.structures" : "from VIS_CTI_AutoCTI_Structures",
     "from autocti.pipeline.phase.abstract" : "from VIS_CTI_AutoCTI_Phase_Abstract",
     "from autocti.pipeline.phase.dataset": "from VIS_CTI_AutoCTI_Phase_Dataset",
     "from autocti.pipeline.phase.ci_imaging": "from VIS_CTI_AutoCTI_Phase_CI",
    "from autocti.pipeline": "from VIS_CTI_AutoCTI_Pipeline",
    "from autocti.plot" : "from VIS_CTI_AutoCTI_Plot",
    "with pytest.raises(exc.ArrayException)": "with pytest.raises(Exception)",
    "with pytest.raises(exc.RegionException)": "with pytest.raises(Exception)",
    "with pytest.raises(exc.MaskException)": "with pytest.raises(Exception)"
}

replace_dict = dict(replace_dict, **autoarray_dict)
replace_dict = dict(replace_dict, **autofit_dict)
replace_dict = dict(replace_dict, **autocti_dict)

def main():

    # rename imports of all files in VIS_CTI.

    os.chdir(VIS_CTI_PATH)

    for x in [t[0] for t in os.walk("../eden_2")]:

        vis_cti_path = f"{VIS_CTI_PATH}/{x}"
        os.chdir(vis_cti_path)

        for f in glob.glob("*.py"):

            for old_text, new_text in replace_dict.items():
                with fileinput.FileInput(f, inplace=True) as file:
                    for line in file:
                        print(line.replace(old_text, new_text), end='')

if __name__ == "__main__":
    main()