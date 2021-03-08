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

def clearCache():
    """
    Removes generic `__pycache__` .

    The `__pycache__` files are automatically created by python during the simulation.
    This function removes the genric files on simulation start and simulation end.
    """

    clear_files = ['.pytest_cache', '.github', '__pycache__', '.eggs']

    for root, _, filenames in os.walk(EDEN_PATH):
        if sum([file in root for file in clear_files]):
            shutil.rmtree(root, ignore_errors=False)

def main():

    # Removing old edenised projects.

    os.chdir(EDEN_PATH)

    for f in glob.glob(f"auto*_eden"):
        shutil.rmtree(f)

    edenise_directory(root_directory=PYAUTOCONF_PATH)
    edenise_directory(root_directory=PYAUTOFIT_PATH)
    edenise_directory(root_directory=PYAUTOARRAY_PATH)
    edenise_directory(root_directory=PYAUTOCTI_PATH)

    clearCache()

if __name__ == "__main__":
    main()