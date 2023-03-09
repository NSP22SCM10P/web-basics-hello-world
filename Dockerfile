# Use a Python base image
FROM python:3.8-slim-buster

# Set the working directory
WORKDIR /app

# Copy the HTML file to the working directory
COPY index.html .

# Install the Python HTTP server
RUN pip install http.server

# Expose port 8000
EXPOSE 8000

# Set the entry point to start the HTTP server
ENTRYPOINT ["python", "-m", "http.server", "8000"]
