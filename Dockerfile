# Stage 1: Build Angular 18 App
FROM node:20-alpine3.18 AS builder

# Install Angular CLI globally
RUN npm install -g @angular/cli@18.2.0

WORKDIR /app

# Copy package files to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the Angular app for production
RUN ng build --configuration=production

# Stage 2: Set up Node.js 21 backend
FROM node:20-alpine3.18 AS server

WORKDIR /app

# Copy only the package files for the Node.js backend
COPY src/installer/package*.json ./

# Install server dependencies
RUN npm install

# Copy the backend source files
COPY src/installer .

# Expose the port your Node.js server will run on
EXPOSE 3000

# Command to run the Node.js server
CMD ["node", "index.js"]

# Stage 3: Combine Angular and Node.js with NGINX
FROM nginx:alpine

# Copy the Angular build from the builder stage to NGINX
COPY --from=builder /app/dist/<your-angular-project-name> /usr/share/nginx/html

# Copy the Node.js server files from the server stage
COPY --from=server /app /usr/share/nginx/node-server

# Install Node.js in the final stage to support backend operations
RUN apk add --no-cache nodejs npm

# Expose the necessary ports
# NGINX
EXPOSE 80
# Node.js API
EXPOSE 3000

# Start both NGINX and the Node.js server concurrently
CMD nginx -g "daemon off;" & node /usr/share/nginx/node-server/index.js
