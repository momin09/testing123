#Dockerfile With Client

FROM node:current-slim

RUN mkdir -p /app

ADD . /app

WORKDIR /app

RUN npm install --silent

WORKDIR /app/client

RUN npm install --silent

EXPOSE 3000

CMD ["npm", "start"]