FROM ubuntu:16.04
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y nagios-nrpe-plugin && \
    rm -rf /var/lib/apt/lists/*

USER nobody
ENV PATH=/usr/lib/nagios/plugins:/usr/local/bin:/usr/bin:/bin