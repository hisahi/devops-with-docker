FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 8000
VOLUME /log.txt
ENV FRONT_URL=https://localhost:5000
CMD ["npm", "start"]
