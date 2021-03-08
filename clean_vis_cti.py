import datetime
import glob
import os
import re
import shutil
import subprocess
from distutils.dir_util import copy_tree
from autofit.tools.edenise import edenise_directory

BUILD_PATH = os.getcwd()

EDEN_PATH = f"{os.getcwd()}/../eden"
VIS_CTI_PATH = f"{os.getcwd()}/../VIS_CTI"
PYAUTOCONF_PATH = f"{os.getcwd()}/../PyAutoConf"
PYAUTOFIT_PATH = f"{os.getcwd()}/../PyAutoFit"
PYAUTOARRAY_PATH = f"{os.getcwd()}/../PyAutoArray"
PYAUTOCTI_PATH = f"{os.getcwd()}/../PyAutoCTI"

FILES_OMIT = ["conftest.py"]

FOLDERS_OMIT = ["output", "VIS_CTI_AutoArray_Plot", "VIS_CTI_AutoCTI_Arctic", "VIS_CTI_AutoCTI_Plot"]

def main():

    # Removing old .py files from VIS_CTI modules.

    os.chdir(VIS_CTI_PATH)

    for x in [t[0] for t in os.walk("../eden_2")]:

        path = f"{VIS_CTI_PATH}/{x}"

        try:

            os.chdir(path)

            if not sum([folder in path for folder in FOLDERS_OMIT]):
                for f in glob.glob(f"*.py"):
                    if not sum([folder in f for folder in FILES_OMIT]):
                        os.remove(f)

            for f in glob.glob(f"tests/python/*"):
                if not sum([folder in f for folder in FILES_OMIT]):
                    if os.path.isdir(f):
                        shutil.rmtree(f)

        except FileNotFoundError:

            pass

if __name__ == "__main__":
    main()