FROM ubuntu:14.04
MAINTAINER Alejandro Guirao <lekumberri@gmail.com>

RUN apt-get -qqy update
RUN apt-get -qqy install ruby git

RUN mkdir -p /opt/geotoad
RUN mkdir -p /opt/gpx
RUN git clone https://github.com/HughP/geotoad.git /opt/geotoad

ENTRYPOINT [ "/opt/geotoad/geotoad.rb" ]
CMD []
