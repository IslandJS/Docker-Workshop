FROM iojs
MAINTAINER awaterma@awaterma.net
LABEL Description="This image is used to start the Nodeschool workshop for Nodeschool Bainbridge." Vendor="IslandJS" Version="1.0"
WORKDIR root
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

