#!/bin/bash

#Variables for command line parameters
#Environment variables should be declared and then referenced by parallel tasks:
#${BDHubUsername}, ${BDHubPassword}
PATH_TO_SCANNER="./scan.docker.sh"
DOCKER_IMAGE="image"
HOST="hostname"
SCHEME="https"

#Add docker images to array
declare -a arr=("image1" "image2" "image3")

for i in "${arr[@]}"
do
  DOCKER_IMAGE=$i
  #$PATH_TO_SCANNER --image $DOCKER_IMAGE --username ${BDHubUsername} --password ${BDHubPassword} --host $HOST --port 443 --scheme $SCHEME
  echo scanned image: $DOCKER_IMAGE &
done
