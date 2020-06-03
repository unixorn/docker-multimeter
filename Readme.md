# sonic-screwdriver

**sonic-screwdriver** is based on debian buster-slim and contains a lot of useful diagnostic tools.

It's inspired by [giantswarm/debug](https://github.com/giantswarm/debug), but giantswarm/debug hasn't been updated since 2018. I prefer debian to alpine - I'm more concerned with getting timely security updates than I am in having the smallest possible image.

## Usage

Attach to an existing container

`docker run --rm -ti --net container:<container-id> unixorn/sonic-screwdriver`

## Goals

This is meant to include a useful set of debugging tools.

## Non-Goals

This image deliberately doesn't include build tools, it's meant strictly for debugging.

 We also don't include `tmux` or `screen` since you can run your preferred one externally to the container, and running it externally means you don't have to do contortions to distinguish between the container's `tmux`/`screen` and the one running on your machine.