# Enterprise Web

[![Build Status](https://travis-ci.com/federation/enterprise-web.svg?branch=master)](https://travis-ci.com/federation/enterprise-web) [![codecov](https://codecov.io/gh/federation/enterprise-web/branch/master/graph/badge.svg)](https://codecov.io/gh/federation/enterprise-web) [![Docker Pulls](https://img.shields.io/docker/pulls/fedtech/enterprise-web.svg)](https://hub.docker.com/r/fedtech/enterprise-web/)

Front-end to [enterprise].

## Development

``` shell
# Build the frontend.
$ yarn build

# Build the frontend and watch for changes.
$ yarn watch
```

To connect to it the [enterprise] backend, clone the backend to the same directory containing this repository. When running the backend, make sure to set it's `ENTERPRISE_WEB_PATH` environment variable to this directory.

[enterprise]: https://github.com/federation/enterprise
