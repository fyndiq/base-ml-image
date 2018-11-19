
REPO=fyndiq
NAME=base-ml-image
TAG=python3.7.0-librdkafka0.11.5-sklearn0.19.2
IMG=$(REPO)/$(NAME):$(TAG)

build:
	docker build -t $(IMG) .
	docker tag $(IMG) $(REPO)/$(NAME):latest

run:
	docker run -it --rm $(IMG)

push: build
	docker push $(IMG)
	docker push $(REPO)/$(NAME):latest
