FROM node:alpine as build
USER node

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app && mkdir -p /home/node/src && chown -R node:node /home/node/src
WORKDIR /home/node/src
ENV API_URL=http://localhost:8000

COPY --chown=node:node . .
RUN npm install && npm run build && ls -l .

FROM node:alpine as app

WORKDIR /home/node/app
COPY --from=build /home/node/src/dist .

RUN npm install -g serve && chmod -R 755 .

EXPOSE 5000
USER node
CMD serve -s -l 5000 dist
