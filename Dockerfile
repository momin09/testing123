#Dockerfile With Client

FROM node:12

RUN mkdir -p /app

ADD . /app

WORKDIR /app

RUN npm install 

RUN npm install @babel/core --save

WORKDIR /app/client

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]