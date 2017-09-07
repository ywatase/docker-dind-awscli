FROM docker:latest
RUN \
    apk -Uuv add \ 
    bash \
    curl \
    less \
    groff \
    jq \
    python \
    py-pip \
    py2-pip && \
    pip install --upgrade pip awscli s3cmd && \
    apk --purge -v del py-pip py2-pip && \
    rm /var/cache/apk/*
