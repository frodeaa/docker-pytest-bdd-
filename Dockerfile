FROM python:3.7.1-alpine3.8

ENV PYTEST_BDD_VERSION 2.21.0

RUN apk --no-cache --update add openssl libffi
RUN apk --no-cache --update add --virtual build-dependencies build-base libffi-dev openssl-dev \
 && pty=False pip install \
    certifi==2018.8.24 \
    chardet==3.0.4 \
    glob2==0.6 \
    idna==2.7 \
    Mako==1.0.7 \
    MarkupSafe==1.0 \
    parse==1.8.4 \
    parse-type==0.4.2 \
    py==1.6.0 \
    pytest==3.7.4 \
    pytest-bdd==$PYTEST_BDD_VERSION \
    requests==2.19.1 \
    six==1.11.0 \
    urllib3==1.23 \
    PyYAML==3.13 \
    bravado_core==5.0.7 \
    PyJWT==1.6.4 \
    cryptography==2.3.1 \
    pycodestyle==2.4.0 \
  && apk del build-dependencies
