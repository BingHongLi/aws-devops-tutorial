#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 129729052534 --region ap-northeast-1)

if [ `docker images | grep iii-devops-ecr | wc -l`  = 1 ]
then
        docker rmi iii-devops-ecr
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/iii-devops-ecr:latest
else
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/iii-devops-ecr:latest
fi
