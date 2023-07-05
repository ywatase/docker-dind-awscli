# docker x awscli

## How to build

prepare buildx environment

```
docker buildx create --name mybuilder --driver docker-container --bootstrap --use
```

check awscli version

```
sh ./build --check
```

or

```
# awscli v2

docker build -t ywatase/dind-awscli .
docker run -t ywatase/dind-awscli aws --version
aws-cli/2.12.6 Python/3.11.4 Linux/6.1.29-0-virt source/aarch64.alpine.3 prompt/off

# awscli v1

curl -O https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
unzip awscli-bundle.zip
find awscli-bundle -name 'awscli-*'
awscli-bundle/packages/awscli-1.28.0.tar.gz
```

build

```
sh ./build -1 1.28.0 [--push]
sh ./build -2 2.12.6 [--push]
```


```
docker buildx build --platform linux/amd64,linux/arm64 -t ywatase/dind-awscli:latest -f Dockerfile.awscli-1.x . --push
docker buildx build --platform linux/amd64,linux/arm64 -t ywatase/dind-awscli:awscli-2.12.6 . --push
docker buildx build --platform linux/amd64,linux/arm64 -t ywatase/dind-awscli:awscli-1.28.0 --build-arg awscli_version=1.28.0 -f Dockerfile.awscli-1.x . --push
```
