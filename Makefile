default: build

# Build an image locally
build:
	docker build ./src -t ghcr.io/newrelic-experimental/pyenv-devcontainer:local --pull

# Build a simplified test image locally for testing the build process and tag with test
test-cpython:
	docker build ./src -t ghcr.io/newrelic-experimental/pyenv-devcontainer:local --pull --build-arg PYTHON_VERSIONS="3.10"

test-pypy:
	docker build ./src -t ghcr.io/newrelic-experimental/pyenv-devcontainer:local --pull --build-arg PYTHON_VERSIONS="pypy3.7 pypy3.8"
