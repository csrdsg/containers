# Build Docker image
docker build -t my-livebook-image .

# Run Docker container
docker run -p 8080:8080 -p 8081:8081 -v ${PWD}:/app/data my-livebook-image