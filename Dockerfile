FROM python:3.11-slim-bookworm

RUN apt update
RUN apt install -y git-all libgomp1 libffi-dev
RUN apt clean

# Essentials
WORKDIR /app
COPY ./exampleproject ./exampleproject
COPY setup.cfg .
COPY pyproject.toml .
COPY poetry.lock .
COPY README.md .

# install package and dependencies
RUN pip install --no-cache-dir poetry==1.8.2
RUN poetry config virtualenvs.create false
RUN poetry install --only main --compile

# lastly copy scipts (most likely to change)
COPY ./processes ./processes

ENTRYPOINT [ "python" ]
CMD [ "--version" ]