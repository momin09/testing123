#Dockerfile With Client

FROM node:16-alpine3.12

RUN apt-get update && apt-get upgrade -y

RUN mkdir -p /app

ADD . /app

WORKDIR /app

#RUN yarn cache clean

RUN npm install

WORKDIR /app/client

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]