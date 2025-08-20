
# DevkitARM GBA for Docker

This repository provides a Docker image for building GBA games with DevkitARM. It offers multiple flavors:

- **Base Image**: What most users typically need.
- **Dusk Image**: Enhanced with additional tools and utilities for a range of projects.

## Included Packages

### Base Devkit (default)

- **Build tools**: `devkitarm`, `git`, `make`, `c`, `c++`, `wget`, `curl`
- **DevkitARM package**: `gba-dev`

### Dusk Addons (only in `dusk` flavor)

- **Asset packers**: `crunch`, `Tiled2GBA`
- **Programming languages**: `Nelua`, `D`

## Building the Docker Image

You can build the Docker images using the provided Makefile targets:

### Base Devkit (recommended)

```sh
make docker-build
```

### Dusk Devkit

```sh
make docker-build-dusk
```

## Usage

To open a shell inside the container with the current directory mounted:

### Opening a Shell in Your Project

```sh
make compile-base CMD="bash"
```

## Examples

### Duster (with dusk flavor)

To build [duster](https://github.com/redthing1/duster) with the Dusk flavor:

```sh
make compile-dusk CMD="pushd . && git submodule update --init --recursive && cd src/DusterGBA && make clean && make build && popd"
```

### Celeste classic

To build the [Celeste Classic](https://github.com/JeffRuLz/Celeste-Classic-GBA) homebrew ROM:

```sh
make compile-base CMD="make"
```

### Varoom3D from Butano

To build [Varoom3D](https://github.com/GValiente/butano) with the Dusk flavor:
```sh
make compile-dusk CMD="cd /source/games/varooom-3d/ && make -j2"
```
