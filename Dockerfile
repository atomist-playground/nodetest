FROM node:14-buster-slim@sha256:bd2d432209771933830d1c179a44bf2203058fdfc5557bc00fbdbd341cb2a701

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]



