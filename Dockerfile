# Use Debian-based Node image (not slim n8n)
FROM node:20-bullseye

# Install Python 3, pip, git, curl
RUN apt-get update && \
    apt-get install -y python3 python3-pip git curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install n8n globally
RUN npm install -g n8n

# Create a non-root user
RUN useradd -ms /bin/bash node
USER node
WORKDIR /home/node

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
