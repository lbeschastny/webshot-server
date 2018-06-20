FROM node:latest

WORKDIR /opt/webshot-server

# install phantomjs-prebuilt
RUN npm install phantomjs-prebuilt

# install packages
COPY package*.json ./
RUN npm install --only=prod

# bundle app
COPY . .

EXPOSE 8080
CMD ["npm", "start"]
