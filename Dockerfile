FROM ubuntu:xenial

# Allow build-time overrides (eg. to build image with a specific MongoDB BIC version)
# Example: docker build --build-arg MONGO_BIC_VERSION=2.12.0
ARG MONGO_BIC_VERSION=2.12.0
ENV MONGO_BIC_VERSION=${MONGO_BIC_VERSION}

RUN set -ex; \
	apt-get update; \
        apt-get install -y openssl libssl-dev libgssapi-krb5-2; \
	apt-get install -y --no-install-recommends \
                ca-certificates \
		wget \
	; \
        wget -O mongodb-bi-linux-x86_64-ubuntu1604-v${MONGO_BIC_VERSION}.tgz "https://info-mongodb-com.s3.amazonaws.com/mongodb-bi/v2/mongodb-bi-linux-x86_64-ubuntu1604-v${MONGO_BIC_VERSION}.tgz"; \
        tar -xvzf mongodb-bi-linux-x86_64-ubuntu1604-v${MONGO_BIC_VERSION}.tgz; \
        install -m755 mongodb-bi-linux-x86_64-ubuntu1604-v${MONGO_BIC_VERSION}/bin/mongo* /usr/local/bin/

EXPOSE 3307


