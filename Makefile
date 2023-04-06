default: build

build:
	docker build ./src -t ghcr.io/newrelic-experimental/pyenv-devcontainer:latest --pull

test-cpython:
	docker build ./src -t ghcr.io/newrelic-experimental/pyenv-devcontainer:test --pull --build-arg PYTHON_VERSIONS="3.10"

test-pypy:
	docker build ./src -t ghcr.io/newrelic-experimental/pyenv-devcontainer:test --pull --build-arg PYTHON_VERSIONS="pypy3.7 pypy3.8"
