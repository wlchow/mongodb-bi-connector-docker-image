# mongodb-bi-connector-docker-image

# Docker Image with the MongoDB BI Connector Installed

This builds a docker image with Ubuntu 16.04 x64 (xenial) with the MongoDB BI Connector version 2.11.0 (default) installed.
The BI Connector Downloads are here: https://www.mongodb.com/download-center/bi-connector/releases

To build the Docker "mongodb-bi-connector" image, follow these steps:

#### 1) Install [Docker](https://docs.docker.com/install/) locally on your own workstation/laptop.

#### 2) Download the source files for this project (on the project page, click the "Clone or download" green button. To Download, click the "Download zip" link and once downloaded, unpack into a new local folder).

#### 3) From a command line shell, to build it using the default BI Connector version 2.11.0, just run:
```
$ docker build -t wchow/mongodb-bi-connector:2.12 .
```

Or if you prefer a specifc BI Connector version then use the build argument MONGO_BIC_VERSION with the version number. For example, to build with version 2.11.1
```
$ docker build -t wchow/mongodb-bi-connector:2.11.1 --build-arg MONGO_BIC_VERSION=2.11.1 .
```

#### 4) Once the image is generated, you can also quickly test the image by running it in a Docker container on your local machine 
```
$ docker run -t -i wchow/mongodb-bi-connector:2.12

# mongosqld --version
mongosqld version: v2.12.0
```

