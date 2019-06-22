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

### For updating container image inside the instance

Get the credential for GCR
```
docker-credential-gcr configure-docker
```

Pull the latest image
```
docker pull gcr.io/rising-timing-220806/my-website
```

Stop and remove old container
```
docker rm -f my-website
```

Start a new container
```
docker run -d --name my-website --restart=always -p 80:80 -p 443:443 gcr.io/rising-timing-220806/my-website
```

Remove the old images
```
docker rmi $(docker images -q -f dangling=true)
```
