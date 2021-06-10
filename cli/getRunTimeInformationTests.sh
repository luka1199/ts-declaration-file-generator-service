#!/bin/bash

MODULE_NAME=$1
OUTPUT_PATH=$2
TIMEOUT_SECONDS=$3

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
ROOT_PATH="$( cd "$(dirname "$0")" ; pwd -P )/.."

# MAC_OS_TIMEOUT="gtimeout -k $TIMEOUT_SECONDS $TIMEOUT_SECONDS docker run \
# 	--name $CONTAINER_NAME \
# 	-v $ABS_ROOT_PROJECT_PATH:$FILE_IN_CONTAINER  \
# 	-v $SCRIPT_PATH/blacklistedModules.json:/tmp/blacklistedModules.json \
# 	master-mind-wp3 \
# 	$FILE_IN_CONTAINER/$JS_FILE_NAME \
# 	/tmp/blacklistedModules.json \
# 	1> /tmp/runtimeinfo"

# OTHER_TIMEOUT="timeout -k $TIMEOUT_SECONDS $TIMEOUT_SECONDS docker run \
# 	--name $CONTAINER_NAME \
# 	-v $ABS_ROOT_PROJECT_PATH:$FILE_IN_CONTAINER  \
# 	-v $SCRIPT_PATH/blacklistedModules.json:/tmp/blacklistedModules.json \
# 	master-mind-wp3 \
# 	$FILE_IN_CONTAINER/$JS_FILE_NAME \
# 	/tmp/blacklistedModules.json \
# 	1> /tmp/runtimeinfo"

# case "$OSTYPE" in
#   darwin*) eval $MAC_OS_TIMEOUT ;;
#   *)       eval $OTHER_TIMEOUT ;;
# esac

$ROOT_PATH/modules/run-time-information-gathering-tests/bin/run.sh $MODULE_NAME $OUTPUT_PATH