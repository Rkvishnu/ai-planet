# Use the official Node.js 18 image as a base
FROM node:18-alpine3.18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Build the app for production
RUN npm run build

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
