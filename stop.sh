#!/bin/bash

MY_DIR=$(dirname "$(readlink -f "$0")")

if [ $# -lt 1 ]; then
    echo "Usage: "
    echo "  ${0} <container_shell_command>"
    echo "e.g.: "
    echo "  ${0} ls -al "
fi

###################################################
#### ---- Change this only to use your own ----
###################################################
ORGANIZATION=openkbs
baseDataFolder="$HOME/data-docker"

###################################################
#### **** Container package information ****
###################################################
DOCKER_IMAGE_REPO=`echo $(basename $PWD)|tr '[:upper:]' '[:lower:]'|tr "/: " "_" `
imageTag="${ORGANIZATION}/${DOCKER_IMAGE_REPO}"

###################################################
#### ---- Mostly, you don't need change below ----
###################################################
function cleanup() {
    containerID=`sudo docker ps -a|grep "${instanceName}" | awk '{print $1}'`
    # if [ ! "`sudo docker ps -a|grep ${instanceName}`" == "" ]; then
    if [ "${containerID}" != "" ]; then
         sudo docker rm -f ${containerID}
    fi
}

## -- transform '-' and space to '_' 
#instanceName=`echo $(basename ${imageTag})|tr '[:upper:]' '[:lower:]'|tr "/\-: " "_"`
instanceName=`echo $(basename ${imageTag})|tr '[:upper:]' '[:lower:]'|tr "/: " "_"`

echo "---------------------------------------------"
echo "---- stop a Container for ${imageTag}"
echo "---------------------------------------------"

cleanup
exit

