#!/bin/sh
sh /usr/local/bin/dockerd-entrypoint.sh &
sleep 2
docker login
[ $? -eq 0 ] || { echo "Please login to Docker"; exit $?; }
if [ $# -lt 2 ]; then
    echo "Usage: $0 url-of-git-repo docker-username/name";
    exit 2
fi
git clone $1 gitrepo && cd gitrepo && docker build -t docker-build-temp . && docker tag docker-build-temp $2 &&docker push $2



