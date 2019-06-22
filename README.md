# nginx-with-ssl

start server
```
docker-compose up -d
```

Building a docker image
```
docker build -t gcr.io/rising-timing-220806/my-website:latest .
```

Push the image to the Container Registry
```
docker push gcr.io/rising-timing-220806/my-website
```
