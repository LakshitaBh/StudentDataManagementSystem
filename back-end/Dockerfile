FROM python:3.11

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the start script into the container
COPY start.sh /usr/src/app/

# Copy the current directory contents into the container at /app
COPY . ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make the start script executable
RUN chmod +x start.sh

EXPOSE 50051

CMD [ "./start.sh" ]
