# Use the n8n base image
FROM n8nio/n8n:latest

# Install python3 and pip
USER root
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Switch back to n8n default user
USER node
WORKDIR /home/node

# (Optional) install any python packages needed
RUN pip3 install --no-cache-dir requests
