FROM node:latest
MAINTAINER Hualao <admin@09l.me>

RUN apt-get clean all
RUN apt-get update
RUN apt-get -y install git
RUN git clone https://github.com/linzroe/forsakenMail.git /forsakenMail

WORKDIR /forsakenMail

RUN npm install

EXPOSE 25
EXPOSE 3000
CMD npm start
