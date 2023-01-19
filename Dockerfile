# FROM ubuntu:20.04
FROM ubuntu:22.04
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs npm git curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g n && n latest
RUN git clone https://github.com/hakimel/reveal.js.git
RUN cd /reveal.js && npm install

WORKDIR /reveal.js
CMD ["npm", "start"]
