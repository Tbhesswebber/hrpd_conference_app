# Presentation Schedule

A sample service to integrate with other services via AMQP.  This file structure was generated and will be trimmed down as development begins.

## API Reference

Currently, the API has no real endpoints as the building of an API doesn't feel like a priority for my time right now.  It turns out this service doesn't need to consume data from Rabbit and so the building of the back-end is not as valuable an exercise as other learning or work at the moment.

## Contributing

### Getting Started

#### Docker

You can spin up a docker container with an optional `PORT` and `NODE_VERSION`.  By default, the port is 3000 and the node version is 12.  As a convenience, you can use the defaults by running `npm run docker:dev` to spin up a hot-reloading development container or `npm run docker:prod` to spin up a production one.
