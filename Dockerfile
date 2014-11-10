# A image with casperjs 1.1-beta3
# For more information; https://github.com/rdpanek/docker_casperjs

FROM rdpanek/phantomjs:1.9.8
MAINTAINER Radim Daniel Pánek <rdpanek@gmail.com>

# env
ENV CASPERJS_VERSION 1.1-beta3


# Commands
RUN \
  mkdir -p /srv/var && \
  git clone https://github.com/n1k0/casperjs /srv/var/casperjs && \
  cd /srv/var/casperjs && git ch tags/$CASPERJS_VERSION && \
  ln -s /srv/var/casperjs/bin/casperjs /usr/bin/casperjs

# Default command
CMD ["/usr/bin/casperjs"]