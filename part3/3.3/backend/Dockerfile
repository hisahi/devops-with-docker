FROM node:alpine
USER node

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app
WORKDIR /home/node/app
ENV FRONT_URL=http://localhost:5000

COPY --chown=node:node . .
RUN npm install

EXPOSE 8000
VOLUME /log.txt
CMD ["npm", "start"]
