FROM node:dubnium-alpine3.11

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk update
RUN apk add --no-cache git
RUN git clone https://github.com/hclasmn/forsakenMail.git /forsaken-mail
RUN  apk del git
WORKDIR /forsaken-mail

RUN npm install

EXPOSE 25
EXPOSE 3000
CMD npm start
