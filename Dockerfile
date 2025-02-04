FROM node:15-alpine


RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .


EXPOSE 5000


CMD [ "node", "src/index.js" ]




