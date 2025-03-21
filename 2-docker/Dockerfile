FROM python:3.12-rc-alpine

RUN apk add findutils && \
    rm -rf /var/cache/apk/* && \
    mkdir data

WORKDIR /usr/src/app
COPY python-scripts/*.py .
ENTRYPOINT ["python3"]
