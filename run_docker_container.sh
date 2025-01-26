# Build the Docker image
docker build -t freeweb .

# Run the Docker container
docker run -p 8085:8085 freeweb
