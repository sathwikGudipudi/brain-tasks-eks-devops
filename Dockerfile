FROM node:20-alpine

WORKDIR /app

# Install a simple static file server
RUN npm install -g serve

# Copy the built static files into the image
COPY dist/ ./dist

EXPOSE 3000

# Serve the dist folder on port 3000
CMD ["serve", "-s", "dist", "-l", "3000"]
