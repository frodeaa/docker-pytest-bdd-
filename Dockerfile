FROM python:3.6.2-alpine3.6

ENV PYTEST_BDD_VERSION 2.21.0

RUN apk --no-cache --update add openssl libffi
RUN apk --no-cache --update add --virtual build-dependencies build-base libffi-dev openssl-dev \
 && pty=False pip install \
    certifi==2017.7.27.1 \
    chardet==3.0.4 \
    glob2==0.5 \
    idna==2.6 \
    Mako==1.0.7 \
    MarkupSafe==1.0 \
    parse==1.8.2 \
    parse-type==0.3.4 \
    py==1.4.34 \
    pytest==3.2.1 \
    pytest-bdd==$PYTEST_BDD_VERSION \
    requests==2.18.4 \
    six==1.10.0 \
    urllib3==1.22 \
    PyYAML==3.12 \
    bravado_core==4.11.4 \
    PyJWT==1.5.3 \
    cryptography==2.1.4 \
    pycodestyle==2.3.1 \
  && apk del build-dependencies
