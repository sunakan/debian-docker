FROM debian:jessie-slim
RUN echo "deb http://cdn-fastly.deb.debian.org/debian jessie main" > /etc/apt/sources.list.d/jessie.list \
  && echo "deb http://security.debian.org/debian-security jessie/updates main" > /etc/apt/sources.list \
  && echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/check-valid-until.conf \
  && apt-get update
