# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install
CMD ["node", "src/index.js"]
EXPOSE 3000
