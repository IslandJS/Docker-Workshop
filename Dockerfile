FROM iojs
MAINTAINER awaterma@awaterma.net
LABEL Description="This image is used to start the Nodeschool workshop for Nodeschool Bainbridge." Vendor="IslandJS" Version="1.0"

RUN apt-get update
RUN apt-get install -y vim

RUN npm install -g javascripting
RUN npm install -g learnyounode
RUN npm install -g git-it
RUN npm install -g how-to-npm
RUN npm install -g stream-adventure
RUN npm install -g functional-javascript-workshop
RUN npm install -g bug-clinic
RUN npm install -g async-you
RUN npm install -g nodebot-workshop
RUN npm install -g goingnative
RUN npm install -g test-anything
RUN npm install -g count-to-6
RUN npm install -g tower-of-babel
RUN npm install -g learnyoureact

RUN mkdir /home/nodeschool
RUN groupadd -r nodeschool && useradd -r -g nodeschool nodeschool
RUN chown -R nodeschool:nodeschool /home/nodeschool
WORKDIR /home/nodeschool
USER nodeschool
