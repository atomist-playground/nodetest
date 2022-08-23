# test
FROM node:16-buster-slim@sha256:239e68151bd924a1b56ff54e60ba41aa68438f422337e1cca2ae21d11b2c1a65

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
