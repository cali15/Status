ARG BUILD_FROM=python:3-alpine
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

COPY . .

WORKDIR Status

# Setup base
ARG BUILD_ARCH=amd64
RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "python3", "./status.py" ]

EXPOSE 9000