# docker-revealjs

docker image of revealjs

## How to use

1. git clone https://github.com/noitorai/docker-revealjs.git
2. cd ./docker-revealjs
3. docker build --no-cache --tag revealjs ./ 
4. put slide files into './slide-data/'
5. docker run -d -v ./slide-data:/reveal.js/slide-data --publish 8000:8000 revealjs
6. access to http://localhost:8000/slide-data/\<slide filename\> in your browser
