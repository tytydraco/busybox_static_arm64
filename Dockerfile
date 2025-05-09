FROM ubuntu:latest

WORKDIR /app

# Install dependencies
RUN apt update && apt install -y \
    build-essential \
    gcc-aarch64-linux-gnu \
    git

# Copy your project files into the container
COPY . .

# Set up compilation command (modify as needed)
RUN ./build.sh
