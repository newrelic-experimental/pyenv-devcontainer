# Passthrough file to allow devcontainer CLI to build image, and allow docker-build-and-push action to tag and apply metadata to it.

ARG BASE
FROM ${BASE}:base
