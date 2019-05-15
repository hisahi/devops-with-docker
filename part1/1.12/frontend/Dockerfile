FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 5000
ENV API_URL=https://localhost:8000/api
CMD ["npm", "start"]
