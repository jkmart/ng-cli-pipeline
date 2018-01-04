FROM yukinying/chrome-headless-browser-selenium

ENV AWS_CLI_VERSION 1.11.131
ENV NODE_VERSION=8.4.0

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
     python3 python3-pip libgconf-2-4 && \
     pip3 install awscli==${AWS_CLI_VERSION} && \
     curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
     apt-get install -y nodejs
