# Dockerfile for Node.js Application

# 1. Base Image: Use a minimal Node.js image
FROM node:20-slim

# 2. Set the working directory inside the container
WORKDIR /usr/src/app

# 3. Copy package.json and package-lock.json to install dependencies
# We copy these first to leverage Docker's build cache
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the application source code
COPY . .

# 6. Expose the port the app runs on (defined in server.js)
EXPOSE 3000

# 7. Define the command to run the application
CMD [ "npm", "start" ]
