# Docker Proxy Ports

## Problem
```text
If you work on PC with many web projects, those runs in docker containers you must use different ports.
E.g.
https://project/
https://project-two:81/
https://anoter-project:82/
https://anoter-project:8888/ # for db
Also many project use same std ports for redis, memcached, db etc.
This may create conflicts.
In this project you with your team can reach an agreement about usage different ports.
```

## Installation and setup
```shell
git clone https://github.com/makhnanov/docker-ports-proxy.git
cd docker-ports-proxy
make
cp private/example.cnf private/your-project-name.conf
# Change your external port in your project in docker 
# Then need edit private/your-project-name.conf
nano private/your-project-name.conf
make reload
# Don't forget add host to /etc/host
# Keep calm and be happy!
# Now you can use only local domains without ports
# https://project/
# https://project-two/
# https://anoter-project/
# https://anoter-project-db/
```
#### Like? Star!
