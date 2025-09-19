# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy all source code
COPY . .

# Expose app port (change if your app uses a different port)
EXPOSE 3000

# Run the app
CMD ["npm", "start"]

