FROM node:18.16.0

WORKDIR /app

COPY . .

WORKDIR /app/client

RUN npm install

WORKDIR /app/server

RUN npm install

CMD [ "npm", "start"]

EXPOSE 8080 5173