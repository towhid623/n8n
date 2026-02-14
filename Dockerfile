# Start from the official n8n image
FROM n8nio/n8n:latest

# Switch to root to install Python
USER root

# Install Python 3 and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set default user back to node
USER node
