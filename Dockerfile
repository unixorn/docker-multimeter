FROM debian:buster-slim
LABEL maintainer="Joe Block <jpb@unixorn.net>"
LABEL description="Make a debug toolkit on debian buster-slim"

RUN apt-get update && \
    apt-get install -y apt-utils ca-certificates --no-install-recommends && \
		update-ca-certificates && \
    apt-get install -y --no-install-recommends curl iftop iperf mtr ngrep nmap tcpdump tcpflow && \
    apt-get install -y --no-install-recommends atop dstat hdparm htop iotop jq ncdu pciutils psmisc pv strace sysstat tree && \
		rm -fr /tmp/* /var/lib/apt/lists/*

CMD ["bash"]