## Dockerize Angular Project
1) remove docker desktop and docker-engine from your pc if already installed.
2) install Rancher Desktop by SUSE 
link: https://rancherdesktop.io/
3) modify Dockerfile, .dockerignore, docker-compose.yml if needed.
4) modify devcontainer if needed.

## RUN USING DOCKER-COMPOSE
### clear
``` 
docker-compose down 
```
### build 
```
docker-compose build --no-cache
```
### start
corrent docker-compose will run at  `localhost:4200`
```
docker-compose up
```
### build and start at once: 
This forces Docker to rebuild the image with the updated configuration. corrent docker-compose will run at  `localhost:4200`
```
docker-compose up --build
```


## USING DEVCONTAINER
currently does not work. needs some work!
