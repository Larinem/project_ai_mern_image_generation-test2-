FROM node:latest

WORKDIR /app

COPY . .

WORKDIR /app/client

RUN npm install

RUN npm dev

WORKDIR /app/server

RUN npm install

CMD [ "npm", "start"]

EXPOSE 8000