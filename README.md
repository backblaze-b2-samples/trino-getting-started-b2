![Trino and Backblaze B2](./assets/bb-bh-Storing-and-Querying-Analytical-Data-in-Backblaze-B2_DesignA1.png)

# Getting Started with Trino and Backblaze B2

Welcome to the Getting Started with [Trino](https://trino.io/) and [Backblaze B2 Cloud Storage](https://www.backblaze.com/cloud-storage) tutorial repository!

Currently, this repository contains two tutorials with preconfigured [Docker Compose](https://docs.docker.com/compose/) environments:
* [`trino-b2`](hive/trino-b2), which until recently lived in the main [`trino-getting-started`](https://github.com/bitsondatadev/trino-getting-started) repository, shows how to configure Trino to use Backblaze B2 for file storage. 
* [`trino-iceberg-hive-b2`](iceberg/trino-iceberg-hive-b2), based on [`trino-iceberg-minio`](https://github.com/bitsondatadev/trino-getting-started/tree/main/iceberg/trino-iceberg-minio), shows how to configure Trino to use the [Iceberg](https://iceberg.apache.org/) table format, using the Hive metastore for table metadata and Backblaze B2 for file storage.

We anticipate adding more environments showing different aspects of integrating Trino with Backblaze B2, for example, using the Iceberg table format with the [Iceberg REST catalog](https://trino.io/docs/current/object-storage/metastores.html#rest-catalog) rather than the Hive metastore.

## Why Trino and Backblaze B2?

Trino is an open-source distributed SQL query engine designed to query large data sets distributed over one or more heterogeneous data sources. As such, Trino can query data lakes containing files of a variety of formats, including [Parquet](https://parquet.apache.org/) and [ORC](https://orc.apache.org/), residing in any of a number of storage systems, including cloud object stores such as Backblaze B2 Cloud Storage, using either of the [Hive](https://hive.apache.org/) or Iceberg table formats.

As a S3-compatible cloud object store, Backblaze B2 combines with Trino to provide [cost-effective, high performance, analytics for large data sets](https://www.backblaze.com/blog/discover-the-secret-to-lightning-fast-big-data-analytics-backblaze-vultr-beats-amazon-s3-ec2-by-39/).   

## Prerequisites

In order to use this repository you need to have [Docker](https://www.docker.com/why-docker) installed to run your service [containers](https://www.docker.com/why-docker). Check if you have Docker installed by running `docker --version`. If Docker isn't found, please install Docker before trying to run these tutorials. If you're on macOS, Linux or Windows, you can install [Docker Desktop](https://www.docker.com/products/docker-desktop/). Alternatively, if you're on Linux, you can install the [Docker Engine](https://docs.docker.com/engine/).

## Layout

The first level of directories in this repo are generally organized by [connector](https://trino.io/docs/current/connector.html). The second level of directories contain the actual environment and documents. In order to run the environment, you need to be in one of the directories that has a `docker-compose.yml` file in it.

## Helpful Docker commands

### Start Services

`docker compose up -d`

### Stop Services

`docker compose stop`

### Clean Services

[cleans images, containers, and network](https://docs.docker.com/config/pruning/)

`docker system prune --all --force`

[cleans volumes](https://docs.docker.com/config/pruning/)

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

[Trino trademark and other legal notices](https://trino.io/legal.html).
