FROM node
MAINTAINER awaterma@awaterma.net
LABEL Description="This image is used to start the Nodeschool workshop for Nodeschool Bainbridge." Vendor="IslandJS" Version="1.0"
RUN apt-get update && \
  apt-get install -y vim && \
npm install -g javascripting && \
npm install -g learnyounode && \
npm install -g git-it && \
npm install -g how-to-npm && \
npm install -g stream-adventure && \
npm install -g functional-javascript-workshop &&  \
npm install -g bug-clinic && \
npm install -g async-you && \
npm install -g nodebot-workshop && \
npm install -g goingnative && \
npm install -g test-anything && \
npm install -g count-to-6 && \
npm install -g tower-of-babel && \
npm install -g learnyoureact && \
npm install -g elementary-electron && \
npm install npm-proxy-cache -g && \
mkdir /home/nodeschool && \
groupadd -r nodeschool && useradd -r -g nodeschool nodeschool && \
usermod -a -G sudo nodeschool && \
chown -R nodeschool:nodeschool /home/nodeschool && \
echo "syntax on" >> /home/nodeschool/.vimrc 
WORKDIR /home/nodeschool
USER nodeschool
ENV term=xterm-256color
