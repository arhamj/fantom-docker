# Docker support for Opera blockchain

### Description

The project comprises a Dockerfile for the Opera blockchain maintained by
the [Fantom Foundation](https://github.com/Fantom-Foundation)

### Prerequisites

This requires a running `docker` and an installed `docker-compose`

### Commands

Download the genesis state using,

```
make mainnet
```

Start the node with the command,

```
make start
```

Other commands,

```
make restart
make stop
```
