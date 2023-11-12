FROM node:14.0.0

WORKDIR /app

COPY . .

WORKDIR /app/client

RUN npm install

WORKDIR /app/server

RUN npm install

CMD [ "npm", "nodemon", "index" ]

EXPOSE 8000