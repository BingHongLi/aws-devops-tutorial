#/bin/bash
# Program:
#   This program create python runtime enviroment first
#   and run the unit test for flask
#   if unit test pass, run the flask server
#   if unit test failed, print test failed, and leave the program
# History:
#   2018/04/29  Alice   First release
# Usage:
#   sh build.sh

docker build -f Dockerfile.build -t flask-build:latest .
docker run -p 5000:5000 --entrypoint python flask-build:latest test_flask.py
if [ $? == 0 ];then
    docker build -f Dockerfile.web -t flask-web:latest .
else
    echo "test failed"
fi
