FROM node:20.10.0-alpine

WORKDIR /app

COPY . .

CMD [ "node index.js" ]