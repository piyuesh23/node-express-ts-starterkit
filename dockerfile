FROM node:16-alpine3.11

RUN apk add --update python make g++

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm@7.19.0

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["npm", "run",  "server"]