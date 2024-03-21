# Exampleproject

An example project for reproducing an error with poetry.

See https://github.com/python-poetry/poetry/issues/9190

## Build docker

Building is done with the VS Code docker extension, which essentially results in the following build command:

```sh
docker build --pull --rm -f "Dockerfile" -t exampleproject:latest "." 
```
