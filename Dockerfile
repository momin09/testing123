#Dockerfile With Client

FROM node:17

RUN mkdir -p /app

ADD . /app

WORKDIR /app

RUN npm install --silent

WORKDIR /app/client

RUN npm install

RUN npm install babel-loader @babel/core

EXPOSE 3000

CMD ["npm", "start"]