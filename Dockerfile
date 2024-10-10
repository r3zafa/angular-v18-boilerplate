# Use the official Node.js 20 image with Alpine
FROM node:20-alpine3.18
# Install bash for potential scripts
RUN apk add --no-cache bash
# Set working directory
WORKDIR /app
# Copy package.json and package-lock.json to leverage Docker cache
COPY package.json ./
COPY package-lock.json ./
# Install dependencies
RUN npm install
# Install Angular CLI globally
RUN npm install -g @angular/cli@18.2.0
# Copy all source files into the container
COPY . .
# Build the Angular application
RUN npm run build
# Start the Angular application
CMD ["npm", "start"]
