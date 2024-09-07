# Server Dockerfile (server/Dockerfile)
FROM node:14

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the server code
COPY . .

# Expose the server port
EXPOSE 5000

# Start the server
CMD ["npm", "start"]
