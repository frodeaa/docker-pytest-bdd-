FROM python:3.7.2-alpine3.7

ENV PYTEST_BDD_VERSION 3.0.1

RUN apk --no-cache --update add openssl libffi
RUN apk --no-cache --update add --virtual build-dependencies build-base libffi-dev openssl-dev \
 && pty=False pip install \
    asn1crypto==0.24.0 \
    atomicwrites==1.2.1 \
    attrs==18.2.0 \
    bravado-core==5.10.1 \
    certifi==2018.11.29 \
    cffi==1.11.5 \
    chardet==3.0.4 \
    cryptography==2.5 \
    glob2==0.6 \
    idna==2.8 \
    jsonref==0.2 \
    jsonschema==2.6.0 \
    Mako==1.0.7 \
    MarkupSafe==1.1.0 \
    more-itertools==5.0.0 \
    msgpack-python==0.5.6 \
    parse==1.11.1 \
    parse-type==0.4.2 \
    pluggy==0.8.1 \
    py==1.7.0 \
    pycodestyle==2.4.0 \
    pycparser==2.19 \
    PyJWT==1.7.1 \
    pytest==3.10.1 \
    pytest-bdd==$PYTEST_BDD_VERSION \
    python-dateutil==2.7.5 \
    pytz==2018.9 \
    PyYAML==3.13 \
    requests==2.21.0 \
    rfc3987==1.3.8 \
    simplejson==3.16.0 \
    six==1.12.0 \
    strict-rfc3339==0.7 \
    swagger-spec-validator==2.4.3 \
    urllib3==1.24.1 \
    webcolors==1.8.1 \
  && apk del build-dependencies
