FROM ubuntu:20.04
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs npm git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/hakimel/reveal.js.git
RUN cd /reveal.js && npm install

WORKDIR /reveal.js
CMD ["npm", "start"]
