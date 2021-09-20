FROM node:14-buster-slim@sha256:e86ec23f85f865730105073aa09665f08f9ac2b5a0070a054b7ca2d09d2eb4cf

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]



