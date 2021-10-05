# test
FROM node:14-buster-slim@sha256:73da64247d766647aec06a08e335761162c2cf62f7b8b48fa246f628a3b59078

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
