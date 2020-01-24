FROM python:3.8.1-alpine3.11

COPY requirements.txt .

RUN apk --no-cache --update add openssl libffi
RUN apk --no-cache --update add --virtual build-dependencies build-base libffi-dev openssl-dev \
  && pty=False python3 -m pip install --disable-pip-version-check -r requirements.txt \
  && apk del build-dependencies
