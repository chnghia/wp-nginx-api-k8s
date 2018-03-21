# Wordpress Nginx with API deploy by Kubernetes

deploy wordpress site with:

- local development: docker compose
- kubernetes: production deploy

All updates with local development will store in dir /wordpress.
Kubernetes will production deploy

## Local development

```
$ docker-compose up
```

## Build and deploy production

```
$ docker-build.sh
$ deploy.sh
```