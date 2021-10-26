FROM alpine:latest
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python; \
    python3 -m ensurepip; \
    pip3 install --no-cache --upgrade pip setuptools; \
    apk add openssh; \
    apk add ansible; \
    apk add git;
