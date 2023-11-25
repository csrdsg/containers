# Use the official Livebook image from GitHub Container Registry
FROM ghcr.io/livebook-dev/livebook

# Set the working directory
WORKDIR /app

# Copy the current directory into the container
COPY . /app

# Expose the ports used by Livebook
EXPOSE 8080 8081

# Create a volume for persisting work
VOLUME ["/app/data"]

# Command to run Livebook with options
CMD ["/app/bin/livebook", "start" ]