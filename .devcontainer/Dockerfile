FROM node:20-bookworm-slim
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -g @angular/cli@18.2.0
COPY . .
CMD ["npm", "start"]
