FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install cors

# Copy the rest of the application
COPY . .

RUN chmod +x start.sh

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["start.sh"]
