FROM node:alpine
USER node

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app
WORKDIR /home/node/app
ENV API_URL=http://localhost:8000

COPY --chown=node:node . .
RUN npm install

EXPOSE 5000
USER node
CMD ["npm", "start"]
