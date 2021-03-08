import datetime
import glob
import os
import re
import shutil
import subprocess
import json
from distutils.dir_util import copy_tree

BUILD_PATH = os.getcwd()

EDEN_PATH = f"{os.getcwd()}/../eden"
VIS_CTI_PATH = f"{os.getcwd()}/../VIS_CTI"
PYAUTOCONF_PATH = f"{os.getcwd()}/../PyAutoConf"
PYAUTOFIT_PATH = f"{os.getcwd()}/../PyAutoFit"
PYAUTOARRAY_PATH = f"{os.getcwd()}/../PyAutoArray"
PYAUTOCTI_PATH = f"{os.getcwd()}/../PyAutoCTI"

FOLDERS_OMIT = ["VIS_CTI_AutoArray_Plot", "VIS_CTI_AutoCTI_Plot"]

def main():

    # move files from eden to VIS_CTI

    os.chdir(VIS_CTI_PATH)

    for x in [t[0] for t in os.walk("../eden_2")]:

        vis_cti_path = f"{VIS_CTI_PATH}/{x}"
        os.chdir(vis_cti_path)

        if not sum([folder in vis_cti_path for folder in FOLDERS_OMIT]):

            for f in glob.glob("modules.json"):
                with open(f) as infile:
                    modules = json.load(infile)
                    for module, command in modules.items():
                        if command == "all":
                            file_list = os.listdir(f"{EDEN_PATH}/{module}")
                        elif command == "*.py":
                            file_list = os.listdir(f"{EDEN_PATH}/{module}")
                            file_list = [file for file in file_list if file.endswith(".py")]
                        else:
                            file_list = command.strip('][').split(', ')

                        for file in file_list:

                            file_path = f"{EDEN_PATH}/{module}/{file}"

                            if os.path.isdir(file_path):
                                shutil.copytree(file_path, f"{vis_cti_path}/{file}", dirs_exist_ok=True)
                            else:
                                shutil.copy(file_path, vis_cti_path)

    os.chdir(VIS_CTI_PATH)

    for x in [t[0] for t in os.walk("../eden_2")]:

        vis_cti_path = f"{VIS_CTI_PATH}/{x}"
        os.chdir(vis_cti_path)

        for f in glob.glob("tests/python/*"):
            if "__init__.py" in f:
                if os.path.isfile(f):
                    os.remove(f)

if __name__ == "__main__":
    main()