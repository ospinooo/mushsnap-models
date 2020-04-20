
include .envrc_vars


docker-pull:
	docker pull tensorflow/serving	

docker-run:
	docker run \
		-p 8501:8501 \
		--name tfserving_resnet \
		--mount type=bind,source=/tmp/resnet,target=/models/resnet \
		-e MODEL_NAME=$(MODEL_NAME) \
		-t tensorflow/serving &

	