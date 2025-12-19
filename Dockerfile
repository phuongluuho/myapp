# Use the official Node.js base image
FROM node:current-alpine
LABEL org.opencontainers.image.authors="@phuongluuho"
# Create the working directory inside the container.
WORKDIR /app
# Copy package.json and package-lock.json (if present) first to install dependencies and leverage Docker’s build cache
COPY package*.json ./
# Install the necessary packages.
RUN npm install
# Copy all source code (including app.js, views folder, etc.) into the container.
COPY . .
# # Open the application port (matching the PORT that Node.js will listen on)
EXPOSE 8080
# # Open the application port (matching the PORT that Node.js will listen on)
CMD ["node", "app.js"]
