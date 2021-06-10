#!/bin/bash

INSTALL_ROOT_PATH=$1
INSTALL_ROOT_FOLDER=$INSTALL_ROOT_PATH/modules
INSTALL_FOLDER=$INSTALL_ROOT_FOLDER/run-time-information-gathering-tests

mkdir -p $INSTALL_ROOT_FOLDER

rm -Rf $INSTALL_FOLDER
mkdir -p $INSTALL_FOLDER

git clone https://github.com/luka1199/run-time-information-gathering-tests.git $INSTALL_FOLDER
npm --prefix $INSTALL_FOLDER install