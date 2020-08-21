FROM node:12-alpine
# Create app directory from which it will execute
RUN mkdir -p /src/app 
WORKDIR /src/app
# Install app dependencies
# Ensure to use cache only if package remains unchanged
COPY package.json /src/app/package.json
RUN npm install
# Bundle app source
COPY . /src/app
EXPOSE 3000
CMD [ "node", "start" ]
