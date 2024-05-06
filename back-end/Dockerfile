FROM python:3.11

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /app
COPY . ./

RUN ls -la

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make the start script executable and move it to the bin directory which is in the PATH
RUN chmod +x startup.sh && \
    mv startup.sh /usr/local/bin/

EXPOSE 50051

CMD [ "startup.sh" ]
