
TAG ?= frodeaa/docker-pytest-bdd

build:
	@docker build -t $(TAG) .

test:
	@docker run \
	-v $(CURDIR)/example:/example \
	-w /example $(TAG) \
	pytest -vv --gherkin-terminal-reporter

install: build test
