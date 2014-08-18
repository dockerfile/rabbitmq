## RabbitMQ Dockerfile


This repository contains **Dockerfile** of [RabbitMQ](http://www.rabbitmq.com/) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/dockerfile/rabbitmq/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/dockerfile/rabbitmq/) from public [Docker Registry](https://index.docker.io/): `docker pull dockerfile/rabbitmq`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/rabbitmq" github.com/dockerfile/rabbitmq`)


### Usage

    docker run -d -p 5672:5672 -p 15672:15672 dockerfile/rabbitmq
