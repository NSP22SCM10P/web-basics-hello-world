# Use a Node.js base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the app files to the container
COPY . .

# Set the environment variables for the server
ENV PORT=9090


# Expose the server port
EXPOSE ${PORT}

# Start the server
CMD ["node", "server.js"]
