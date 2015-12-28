# alpine-tor

Minimalistic tor docker image based on Alpine Linux (7MB)
```
 $ docker run -d \
   --name tor \
   -p 9001:9001 \
   -p 9050:9050 \
   -p 9053:9053 \
   marcelmaatkamp/alpine-tor:latest
```

Add the dockerhost ip and the port 9050 as a SOCKS5 proxy-server in your browser.
