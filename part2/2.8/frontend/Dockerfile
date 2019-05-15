FROM node:10

WORKDIR /usr/src/app
ENV API_URL=http://localhost:8000/api

COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 5000
CMD ["npm", "start"]
