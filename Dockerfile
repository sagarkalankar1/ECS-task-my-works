# Use the official Node.js image as the base image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port on which the Node.js application is running
EXPOSE 3000

# Start the Node.js application
CMD ["node", "index.js"]
