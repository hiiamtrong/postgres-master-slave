<!-- Generate how to run postgres master slave from Makefile -->
# How to run postgres master slave

## Prerequisites

- docker
- docker-compose

## How to run

1. Start master instance: `make start-master`
2. Config master instance: `make config-master`
3. Create replication user: `make create-replication-user`
4. Backup master instance: `make backup-master`
5. Start slave instance: `make start-slave`