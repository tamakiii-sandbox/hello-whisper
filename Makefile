.PHONY: help whisper translate

MODEL := medium
LANGUAGE := Japanese

help:
	@cat $(firstword $(MAKEFILE_LIST))

whisper:
	whisper data/test.mp3 --model $(MODEL) --language $(LANGUAGE)

translate:
	whisper data/test.mp3 --model $(MODEL) --language $(LANGUAGE) --task translate
