#!/bin/bash
docker run -d --name=nodo1 -p 91:80 luismarioram99/web-app
docker run -d --name=nodo2 -p 92:80 luismarioram99/web-app
