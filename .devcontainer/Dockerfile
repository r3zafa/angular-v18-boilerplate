FROM node:20-bookworm-slim
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm i @angular/cli@18.2.0
COPY . .
