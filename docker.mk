.PHONY: help

IMAGE := tamakiii-sandbox/hello-whisper
LABEL := latest

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: Dockerfile
	docker build -t $(IMAGE):$(LABEL) .

clean:
	docker image rm $(IMAGE):$(LABEL)
