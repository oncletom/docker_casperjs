# Author: Radim Daniel Pánek <rdpanek@gmail.com>
#
# make build  - build new image from Dockerfile
# make test <example.js>  - run test


NAME=rdpanek/casperjs
VERSION=1.3


default:
	@echo Please use \'make build\' or \'make test example.js\'

build:
	docker build -t $(NAME):$(VERSION) .

test:
	docker run --rm -v `pwd`:/mnt/test $(NAME):$(VERSION) /usr/bin/casperjs test /mnt/test/$(filter-out $@,$(MAKECMDGOALS))

selftest:
	docker run --rm $(NAME):$(VERSION) /usr/bin/casperjs selftest

tag:
	git tag -d $(VERSION) 2>&1 > /dev/null
	git tag -d latest 2>&1 > /dev/null
	git tag $(VERSION)
	git tag latest
