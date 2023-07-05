FROM docker:latest
ARG awscli_version=1.28.0
RUN \
    apk -Uuv add \ 
    bash \
    curl \
    less \
    git  \
    groff \
    jq \
    py3-pip \
    s3cmd \
    && \
    rm -rf /var/cache/apk/
RUN pip3 install  --no-cache-dir awscli==$awscli_version --upgrade
