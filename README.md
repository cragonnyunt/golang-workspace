# Golang Workspace

[![Golang Workspace CI](https://github.com/cragonnyunt/golang-workspace/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/cragonnyunt/golang-workspace/actions/workflows/main.yml)

Golang Workspace Docker is built on top of the [development workspace docker](https://github.com/cragonnyunt/development-workspace). It contains the most used tools for GO developers, and prepare environment configuration for developing golang apps and websites.

Set of tools installed
- Everything installed on [development workspace docker](https://github.com/cragonnyunt/development-workspace)
- GO

## Pulling the image

```
docker pull cragonnyunt/golang-workspace-docker:<<tag>>
```

## Running the image

```
docker run --rm -it \
    -v $(pwd):/workspace \
    cragonnyunt/golang-workspace-docker:<<tag>>
```
