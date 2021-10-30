FROM node:latest

COPY ../../../services/chat_api /var/www/html/chat_api
WORKDIR /var/www/html/chat_api
RUN npm i -g nodemon
RUN npm install
CMD ["nodemon", "server.js"]