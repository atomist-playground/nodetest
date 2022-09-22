# test
FROM node:16-buster-slim@sha256:f527a6118422b888c35162e0a7e2fb2febced4c85a23d96e1342f9edc2789fec as test

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]

FROM scratch

ENV test=foo
