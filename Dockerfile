# Only one from line; but still not working
FROM node:14-buster-slim

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
