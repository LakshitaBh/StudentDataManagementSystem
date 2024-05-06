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

# Install Envoy
RUN apt-get update && \
    apt-get install -y wget && \
    wget -O /usr/local/bin/envoy https://getenvoy.io/cli/linux/amd64/stable && \
    chmod +x /usr/local/bin/envoy

RUN chmod +x startup.sh && \
    mv startup.sh /usr/local/bin/


# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["start.sh"]
