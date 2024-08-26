# Use an official Node.js image as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port your application will run on
EXPOSE 5000

# Define the environment variables (if any)
ENV NODE_ENV=production

# Command to run the application
CMD ["node", "app.js"]
