# alpine-tor

Minimalistic tor docker image based on Alpine Linux (7MB). The binary comes from the compiled instance of [docker-alpine-build-tor](https://github.com/marcelmaatkamp/docker-alpine-build-tor)

Usage:
```
 $ docker run -d \
   --name tor \
   -p 9001:9001 \
   -p 9050:9050 \
   -p 9053:9053 \
   marcelmaatkamp/alpine-tor:latest
```

Add the dockerhost ip and the port 9050 as a SOCKS5 proxy-server in your browser.
