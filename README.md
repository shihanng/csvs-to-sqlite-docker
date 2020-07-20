# csvs-to-sqlite-docker

![Tests](https://github.com/shihanng/csvs-to-sqlite-docker/workflows/Tests/badge.svg)
![GitHub](https://img.shields.io/github/license/shihanng/csvs-to-sqlite-docker)
![GitHub tag (latest SemVer pre-release)](https://img.shields.io/github/v/tag/shihanng/csvs-to-sqlite-docker?include_prereleases)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/shihanng/csvs-to-sqlite)

Docker Image for [csvs-to-sqlite](https://github.com/simonw/csvs-to-sqlite).

## Usage

```console
docker run --rm \
  -v $(pwd):/app \
  shihanng/csvs-to-sqlite:1.0.0 \
  --help
```

## Releases

Image tag matches the version in [csvs-to-sqlite](https://github.com/simonw/csvs-to-sqlite). Publishing new GitHub release triggers the build that create and publish new docker image to [Docker Hub](https://hub.docker.com/r/shihanng/csvs-to-sqlite).

## Running tests locally

### Prerequisite

- Docker
- [SQLite](https://sqlite.org/cli.html)

```console
npm install
npm test
```
