set -ex
#set registry
USERNAME=129729052534.dkr.ecr.ap-northeast-1.amazonaws.com
# image name
IMAGE=iii-devops-ecr
docker build -t $USERNAME/$IMAGE:latest .
version=`cat VERSION`
echo "version: $version"
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
docker push $USERNAME/$IMAGE:$version

