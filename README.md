# Docker casperjs 1.1-beta3 image

## Contains

* Ubuntu 14.04
* phantomjs 1.9.8
* casperjs 1.1-beta3
* example test


## Usage in next layer

  FROM rdpanek/phantomjs:1.9.8

### Build
  `git clone https://github.com/rdpanek/docker_casperjs`

  `make build`

### run test
  `make test example.js`

### selftest
  `make selftest`

### test of version
  `docker run --rm rdpanek/casperjs:1.1-beta3 /usr/bin/casperjs --version`

## Changelog
- 1.1-beta3 first realese ( image [rdpanek/casperjs:1.1-beta3](https://registry.hub.docker.com/u/rdpanek/casperjs/) )