#!/bin/bash
if [ `docker ps | grep boring_shockley | wc -l`  = 1 ]
then
        docker stop boring_shockley
        docker rm  boring_shockley
fi
