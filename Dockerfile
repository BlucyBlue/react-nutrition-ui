# Stage 1: Build the React application
FROM node:latest as build

# Set the working directory in the Docker container
WORKDIR /app

# Copy the package.json and package-lock.json (or yarn.lock) files
COPY package*.json ./

# Install dependencies in the Docker container
RUN npm install

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . ./

# Build the application for production
RUN npm run build
