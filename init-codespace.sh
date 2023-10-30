#!/bin/bash
#
## Description: Initialize Jupyter starter project in new codespace
#  + use alternative 'requirements.txt' name to avoid codespace direct install
#  + use pip option '--user' to avoid codespace path issue (e.g. nbdev_* tools)

# create local VS Code settings file
cp .vscode/settings.json.example .vscode/settings.json

# update Python package manager
python -m pip install --upgrade pip

# (re)install Python packages in user path (findable in codespace)
python -m pip install \
  --force-reinstall \
  --user \
  --requirement requirements.txt

# install pre-commit hooks and run them on all files
pre-commit install
nbdev_install_hooks
pre-commit run --all-files

# configure conda shell for codespace
conda init bash
