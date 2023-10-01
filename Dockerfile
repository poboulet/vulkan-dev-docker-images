# Use an official Alpine runtime as a parent image
FROM alpine:latest

# Set the working directory in Docker
WORKDIR /app

# Update and install dependencies
RUN apk update && \
    apk add --no-cache \
    build-base \
    cmake \
    llvm \
    clang \
    python3 \
    py3-pip \
    mesa-dev \
    libx11-dev \
    libxcb-dev && \
    pip3 install --no-cache-dir conan && \
    rm -rf /var/cache/apk/*
