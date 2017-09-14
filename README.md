# Docker for sa-mp

Tested with 0.3.7 R2-2

## Instructions

- Check out this project
- Place your sa-mp files into the `samp03` directory
- To build the image run `docker build -t sa-mp .`
- Start the container with `docker run --net=host -v samp03:/samp sa-mp`

Your server should now be running within the docker container.

## Caveats

- This isn't a very well optimised image, it just shares the sa-mp volume with the container. This can be particularly slow on OS X hosts.
- Nothing is back in the docker registry. Maybe one day.
