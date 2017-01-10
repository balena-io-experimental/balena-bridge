FROM resin/%%RESIN_MACHINE_NAME%%-debian:latest

WORKDIR /usr/src/app
ENV INITSYSTEM on

# Install bridging depeendencies
RUN apt-get update && \
    apt-get install -yq --no-install-recommends \
      parprouted dhcp-helper avahi-daemon \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy relevant scripts
COPY conf/dhcp-helper /etc/default/dhcp-helper
COPY conf/avahi-daemon.conf /etc/avahi/avahi-daemon.conf
COPY start.sh ./

CMD ["bash", "start.sh"]
