FROM node:10

WORKDIR /usr/src/app
ENV FRONT_URL=http://localhost:5000

COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 8000
VOLUME /log.txt
CMD ["npm", "start"]
