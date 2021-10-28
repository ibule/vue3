echo -e "---------docker Login--------"
docker login --username=$1 ccr.ccs.tencentyun.com --password=$2
echo -e "---------docker Stop--------"
docker stop vue3
echo -e "---------docker Rm--------"
docker rm vue3
docker rmi registry.ccr.ccs.tencentyun.com/ibule/vue3:latest
echo -e "---------docker Pull--------"
docker pull registry.ccr.ccs.tencentyun.com/ibule/vue3:latest
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 8081:80 --name vue3 registry.ccr.ccs.tencentyun.com/ibule/vue3:latest
echo -e "---------deploy Success--------"