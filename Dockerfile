
# VERSION   0.0.1

FROM ubuntu:precise
MAINTAINER Greg Lee Coleman <gleeco@gmail.com>


#pt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes software-properties-common python-software-properties
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get -y update
RUN /bin/echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java7-installer oracle-java7-set-default

# KairosDB
#ADD http://dl.bintray.com:80/brianhks/generic/kairosdb_0.9.3-2_all.deb  kairosdb_0.9.3-2_all.deb
ADD kairosdb_0.9.3-2_all.deb  kairosdb_0.9.3-2_all.deb
RUN dpkg -i kairosdb_0.9.3-2_all.deb
RUN rm kairosdb_0.9.3-2_all.deb

ADD install/kairosdb.properties /opt/kairosdb/conf/kairosdb.properties
EXPOSE 4242 8080

