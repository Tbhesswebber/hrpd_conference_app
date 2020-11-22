# Presentation Schedule

A sample service to integrate with other services via AMQP.  This file structure was generated and will be trimmed down as development begins.

## Getting Started

### Docker

You can spin up a docker container with an optional `PORT` and `NODE_VERSION`.  By default, the port is 3000 and the node version is 12.  As a convenience, you can use `npm run docker` to run a development container with the defaults.

```sh
docker build -t presentation-scheduling .
```

```sh
docker run -it -p 3000:3000 --mount src=$PWD presentation-scheduling
```
