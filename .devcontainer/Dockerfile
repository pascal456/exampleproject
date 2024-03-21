ARG PYTHON_VERSION

FROM mcr.microsoft.com/devcontainers/python:1-${PYTHON_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections

RUN apt update
RUN apt -y install --no-install-recommends lm-sensors
RUN apt -y install --no-install-recommends libpq-dev

RUN pip install --upgrade pip
RUN pipx install poetry
