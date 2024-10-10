# Stage 1: Use Node.js base image to build Angular app
FROM node:20-alpine3.18 AS builder

# Install Angular CLI globally
RUN npm install -g @angular/cli@18.2.0

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install Angular dependencies
RUN npm install

# Copy the entire application source code
COPY . .

# Expose port 4200 (default for Angular development server)
EXPOSE 4200

# Start the Angular app in development mode
CMD ["npm", "start"]
