FROM node:14-alpine

WORKDIR /usr/app
RUN apk add --update redis
COPY ./package.json ./
COPY ./ ./
RUN npm install

CMD ["npm", "start"]