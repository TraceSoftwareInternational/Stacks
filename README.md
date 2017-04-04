# Stacks

Repository which contains docker-compose files of some projects.

## How use this repository

**Prerequisite:** To use this project you should have `docker` and `docker-compose` installed on your computer/server.


### Just deploy a stack

1. Download the `docker-compose.yml` file of the project you want to deploy
1. Pull all docker images required `docker-compose pull`
1. Deploy the service `docker-compose up -d`

Thats it :D

**Example:**

```sh
me@myServer:~$ wget https://raw.githubusercontent.com/TraceSoftwareInternational/Stacks/master/Sonarqube/docker-compose.yml
me@myServer:~$ docker-compose pull && docker-compose up -d
```

### Install on your Debian/Ubuntu server

You can also deploy properly a projects directly on your server.
To do that download and execute the `install.sh` script available in the folder of the project you want to deploy.

**Example:**

```sh
wget -O - https://raw.githubusercontent.com/TraceSoftwareInternational/Stacks/master/Sonarqube/install.sh | bash
```

This script will deploy the project in `systemd` and enable it at startup.

## Project in this repository

* [Sonarqube](Sonarqube/docker-compose.yml). A Sonarqube with PostgreSQL database.
