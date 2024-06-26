# Use an official Node.js runtime as the base image
FROM node:18.19.1-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose a port that your application will listen on
EXPOSE 3000

# Define the command to run your application
CMD [ "npm", "start" ]
