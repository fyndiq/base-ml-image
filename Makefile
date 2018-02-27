REPO=$(IMAGE_URL)
NAME=base-ml-image
TAG=python3.6.4-librdkafka0.11.3

build:
	docker build -t $(IMAGE_URL):$(TAG) .

run:
	docker run -it --rm $(IMAGE_URL):$(TAG)

push: build
	gcloud docker -- push $(IMAGE_URL):$(TAG) || echo "Image ${IMAGE_URL}:${REPO_SHA1} is already published"