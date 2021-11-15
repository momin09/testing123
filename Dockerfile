#Dockerfile With Client

FROM node:16-alpine3.12

RUN mkdir -p /app

ADD . /app

WORKDIR /app

RUN yarn cache clean


RUN yarn install

WORKDIR /app/client

RUN yarn install

EXPOSE 3000

CMD ["yarn", "start"]