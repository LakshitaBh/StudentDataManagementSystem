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
    apt-get install -y apt-transport-https gnupg2 curl lsb-release && \
    curl -sL 'https://deb.dl.getenvoy.io/public/gpg.8115BA8E629CC074.key' | \
    gpg --dearmor -o /usr/share/keyrings/getenvoy-keyring.gpg && \
    echo a077cb587a1b622e03aa4bf2f3689de14658a9497a9af2c427bba5f4cc3c4723 /usr/share/keyrings/getenvoy-keyring.gpg | \
    sha256sum --check

# Add the GetEnvoy repository and install Envoy
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/getenvoy-keyring.gpg] https://deb.dl.getenvoy.io/public/deb/ubuntu $(lsb_release -cs) main" | \
    tee /etc/apt/sources.list.d/getenvoy.list && \
    apt-get update && \
    apt-get install -y getenvoy-envoy


RUN chmod +x startup.sh && \
    mv startup.sh /usr/local/bin/


# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["startup.sh"]
