ARG BUILD_FROM=python:3-alpine
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

WORKDIR Status

COPY . .

# Setup base
ARG BUILD_ARCH=amd64
RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "python3", "./status.py" ]

EXPOSE 9000