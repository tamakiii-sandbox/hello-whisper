.PHONY: help build bash clean

IMAGE := tamakiii-sandbox/hello-whisper
LABEL := latest

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: Dockerfile
	docker build -t $(IMAGE):$(LABEL) .

bash:
	docker run -it --rm -v $(PWD):/usr/local/lib/tamakiii-sandbox/hello-whisper -w /usr/local/lib/tamakiii-sandbox/hello-whisper $(IMAGE):$(LABEL) $@

clean:
	docker image rm $(IMAGE):$(LABEL)
