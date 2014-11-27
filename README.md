# Docker casperjs 1.1-beta3 image

## Contains

* Ubuntu 14.04
* phantomjs 2.0.0
* casperjs 1.1-beta3 (master branch)
* example test


## Usage in next layer

  FROM rdpanek/casperjs:1.3

### Build
  `git clone https://github.com/rdpanek/docker_casperjs`

  `make build`

### run test
  `make test example.js`

### selftest
  `make selftest`

### test of version
  `docker run --rm rdpanek/casperjs:1.3 /usr/bin/casperjs --version`

## Changelog
- 1.3 build CasperJS from branch master ( last revision: [9f1b76d25b0f038a75472986dd218eb898355782](https://github.com/n1k0/casperjs/commit/cafb17c536b30f3dcaa7a359b1ce533cf4c57dd0) ), because latest tag 1.1-beta3 pointing to the one year old revision
- 1.2 added support for Phantomjs2.0
- 1.1-beta3 first realese ( image [rdpanek/casperjs](https://registry.hub.docker.com/u/rdpanek/casperjs/) )
