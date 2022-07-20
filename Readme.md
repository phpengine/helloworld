

## Docker Build

```
docker build . -f Dockerfile -t helloworld:1.0
docker run -p 127.0.0.1:8333:3000 helloworld:1.0
docker exec -it $(docker ps -a | grep helloworld | awk '{ print $1 }' ) /bin/bash
docker tag $(docker image ls | grep helloworld | head -n1 | awk '{ print $3 }' ) fantasticfables/fables-wp:latest
docker push t3rnhub/fables-wp:latest

build, tag, push in one line

docker build . -f Dockerfile -t helloworld:1.0 --no-cache && \
docker tag $(docker image ls | grep helloworld | head -n1 | awk '{ print $3 }' ) fantasticfables/fables-wp:latest && \
docker push t3rnhub/helloworld:latest

```
