# Getting Started with Trino and Backblaze B2

Welcome to the Getting Started with [Trino](https://trino.io/) and [Backblaze B2](https://www.backblaze.com/cloud-storage) tutorial repository. Currently, this repository contains the `trino-b2` environment that, until recently, lived in the main [`trino-getting-started`](https://github.com/bitsondatadev/trino-getting-started) repository. We anticipate adding more environments showing different aspects of integrating Trino with Backblaze B2; for example, an [Apache Iceberg](https://iceberg.apache.org/) example along the lines of [`trino-iceberg-minio`](https://github.com/bitsondatadev/trino-getting-started/tree/main/iceberg/trino-iceberg-minio).

This is a home for a set of preconfigured [Docker Compose](https://docs.docker.com/compose/) 
environments that are used to set up simple environments and showcase basic 
configurations in isolation to get new and existing users started on all the 
different containers we have, and more importantly learn and have fun with 
Trino and B2.

## Prerequisites

In order to use this repository you need to have [Docker](https://www.docker.com/why-docker) installed to run your service [containers](https://www.docker.com/why-docker). Check if you have Docker installed by running `docker --version`. If Docker isn't found, please refer to the [install insructions](https://docs.docker.com/engine/install/) and install Docker before trying to run these tutorials. If you're on mac or windows, you will just need to install docker desktop. If you're on a linux distribution, you will just need to install the docker engine.

## Layout

The first level of directories in this repo are generally organized by [connector](https://trino.io/docs/current/connector.html). Concepts such as security, clients, or basics will have their own directory as well. The second level of directories contain the actual environment and tutorial directories themselves. In order to run the environment, you need to be in one of these directories that have a docker-compose.yml file in it. The second level of directories contain the actual environment and tutorial directories themselves. In order to run the environment, you need to be in one of these directories that have a docker-compose.yml file in it.

## Helpful Docker commands

### Start Service

`docker compose up -d`

### Stop Service

`docker compose stop`

### Clean Service

[cleans images, containers, and network](shttps://docs.docker.com/config/pruning/)

`docker system prune --all --force`

[cleans volumes](shttps://docs.docker.com/config/pruning/)

`docker volume prune --force`

### Show Service Images 

`docker images`

### Login to Container

`docker container exec -it <container_id> /bin/bash`

### Show Service Logs

`docker logs <container_id>`

### List Services

`docker container ls`

### List Service Process information

`docker compose ps`

See trademark and other [legal notices](https://trino.io/legal.html).
