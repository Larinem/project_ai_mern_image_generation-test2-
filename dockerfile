FROM node:14.0.0

WORKDIR /app

COPY . .

RUN cd /client

RUN npm install

RUN cd ..

RUN cd /server

RUN npm install

CMD [ "npm", "nodemon", "index" ]

EXPOSE 8000