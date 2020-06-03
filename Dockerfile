FROM unixorn/debian-py3
LABEL maintainer="Joe Block <jpb@unixorn.net>"
LABEL description="Make a debug toolkit on debian buster-slim"

RUN apt-get update && \
    apt-get install -y apt-utils ca-certificates --no-install-recommends && \
		update-ca-certificates && \
		rm -fr /tmp/* /var/lib/apt/lists/*

# Network utils + jq and yq for parsing stuff from the network
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl \
      dnsutils \
      iftop \
      iperf \
      jq \
      mtr \
      ngrep \
      nmap \
      tcpdump \
      tcpflow && \
		rm -fr /tmp/* /var/lib/apt/lists/*

# Local utils
RUN apt-get update && \
    apt-get install -y --no-install-recommends atop \
      dstat \
      hdparm \
      htop \
      iotop \
      ncdu \
      pciutils \
      psmisc \
      pv \
      strace \
      sysstat \
      tree \
      vim && \
		rm -fr /tmp/* /var/lib/apt/lists/*

RUN pip3 install yq

CMD ["bash"]
