# test
FROM node:14-buster-slim@sha256:45e1ce1700de08f248ed342cda2ad676f6b1f71b48f9fc180fdbbd38ed84aff7

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
