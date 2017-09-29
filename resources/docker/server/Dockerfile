FROM python:3.6

WORKDIR /usr/src/app

RUN groupadd -rf python && useradd -g python --create-home --shell /bin/bash python

ADD src /usr/src/app

RUN chown -R python:python /usr/src/app

USER python

ENTRYPOINT ["python", "server.py"]
