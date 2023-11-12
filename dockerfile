FROM node:18.16.0

WORKDIR /app

COPY . .

WORKDIR /app/client

RUN npm install

RUN npm build

WORKDIR /app/server

RUN npm install

CMD [ "npm", "start"]

EXPOSE 8000