
Docker setup for KairosDB
========================


This repo builds a [Docker](htps://www.docker.io)  container for the KairosDB time series database.
It needs Cassandra to be installed and found.  

It is configured to run with [docker-cassandra](https://github.com/nicolasff/docker-cassandra)

Getting started
--------------

### Install pipework

Both Cassandra and Kairosdb use [the script](https://github.com/jpetazzo/pipework)
for networking bridge connectivity

### Clone & run docker-cassandra

Follow the instructions in the [README](https://github.com/nicolasff/docker-cassandra/)

### Clone & run docker-kairosdb

    $ git clone https://github.com/gleeco/docker-kairosdb.git
    $ cd docker-kairosdb
    $ ./build.sh
    $ ./start-kairos.sh

### Test

In the test directory, two scripts to verify that things work:

    $ test/netcat.sh
    $ test/http.sh
    $ test/http_list.sh

