# csvs-to-sqlite-docker

![Tests](https://github.com/shihanng/csvs-to-sqlite-docker/workflows/Tests/badge.svg)
![GitHub](https://img.shields.io/github/license/shihanng/csvs-to-sqlite-docker)

Docker Image for [csvs-to-sqlite](https://github.com/simonw/csvs-to-sqlite).

## Usage

```
docker run --rm \
  -v $(pwd):/app \
  docker.pkg.github.com/shihanng/csvs-to-sqlite-docker/csvs-to-sqlite:1.0.0 \
  --help
```

## Releases

Image tag matches the version in [csvs-to-sqlite](https://github.com/simonw/csvs-to-sqlite). Publishing new GitHub release triggers the build that create and publish new docker image to [GitHub Package](https://github.com/shihanng/csvs-to-sqlite-docker/packages/292257).
