DEV_IMG="registry.steam.crcloud.com/docker/rancher/vue3:v1.0"


build: 
	npm i
	npm run build
docker:
	docker build -f Dockerfile -t ${DEV_IMG} .
	docker push ${DEV_IMG}

deploy:
	@echo "deploy...\n"
	kubectl set image deploy/vue3-web vue3-web=${DEV_IMG}  -n dadp

all: build docker deploy