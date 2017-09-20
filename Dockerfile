FROM markadams/chromium-xvfb-js

RUN apt-get update && apt-get install -y \
    python3 python3-pip curl unzip libgconf-2-4 \
    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -b ~/bin/aws
