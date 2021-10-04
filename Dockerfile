# Only one from line
FROM node:14-buster-slim@sha256:836375887d5ec180aeeeff3089560295fd1d2bd3644985e89ec6e7adf36a9d7e

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
