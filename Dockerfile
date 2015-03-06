FROM marcelmaatkamp/alpine-base 

RUN curl -L https://raw.githubusercontent.com/marcelmaatkamp/alpine-packages/master/packages/tor/static/tor-0.2.5.10-static.tgz | tar zx

ADD ./torrc /etc/torrc
# Allow you to upgrade your relay without having to regenerate keys
VOLUME /.tor

# Generate a random nickname for the relay
RUN echo "Nickname docker$(head -c 16 /dev/urandom  | sha1sum | cut -c1-10)" >> /etc/torrc

CMD /usr/local/bin/tor -f /etc/torrc

