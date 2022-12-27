FROM node:14-alpine

RUN apk add --update redis
COPY ./ ./
RUN npm install

CMD ["npm", "start"]