#Dockerfile With Client

FROM node:16

RUN mkdir -p /app

ADD . /app

WORKDIR /app

RUN npm install --silent

RUN npm install @babel/core --save

WORKDIR /app/client

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]