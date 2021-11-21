# test
FROM node:16-buster-slim@sha256:a5eecf2ee53935cb7974dfff42260d97289d61be9d7a2062c693be93c0cdcd7a

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
