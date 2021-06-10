#!/bin/bash

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
INSTALLERS=$SCRIPT_PATH/install

MASTER_MIND_VERSION=v1.1
DTS_GENERATE_VERSION=v1.2

echo ""
echo ">> Installing master-mind"
# $INSTALLERS/master-mind/install.sh $SCRIPT_PATH $MASTER_MIND_VERSION
echo ""
echo ">> Installing ts-declaration-file-generator"
$INSTALLERS/ts-declaration-file-generator/install.sh $SCRIPT_PATH $DTS_GENERATE_VERSION
echo ""
echo ">> Installing run-time-information-gathering-tests"
$INSTALLERS/run-time-information-gathering-tests/install.sh $SCRIPT_PATH

rm -rf $SCRIPT_PATH/tmp
mkdir $SCRIPT_PATH/tmp