# Use official n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install Python 3 and pip using apk
RUN apk add --no-cache python3 py3-pip

# Make sure python3 is available as "python"
RUN ln -sf python3 /usr/bin/python

# Switch back to node user
USER node
