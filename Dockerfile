FROM docker:latest
RUN \
    apk -Uuv add \ 
    bash \
    curl \
    less \
    git  \
    groff \
    jq \
    aws-cli \
    s3cmd \
    && \
    rm /var/cache/apk/*
