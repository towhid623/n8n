# Use Debian-based Node.js image
FROM node:20-bullseye-slim

# Install python3, pip, curl, git
RUN apt-get update && \
    apt-get install -y python3 python3-pip curl git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install n8n globally
RUN npm install -g n8n

# Create n8n user
RUN useradd -ms /bin/bash node
USER node
WORKDIR /home/node

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
