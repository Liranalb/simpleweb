FROM node:14-alpine

WORKDIR /usr/app
RUN apk add --update redis
COPY ./ ./
RUN npm install

CMD ["npm", "start"]