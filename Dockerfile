FROM node:12-alpine
# Create app directory from which it will execute
WORKDIR /app
# Install app dependencies
# Ensure to use cache only if package remains unchanged
COPY package.json /app
RUN npm install
# Bundle app source
COPY . /app
CMD node index.js
EXPOSE 3000