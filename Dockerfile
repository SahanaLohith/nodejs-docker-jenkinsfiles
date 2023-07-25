#Choose a base image
FROM node

# Set the working dir when our container executes
WORKDIR /usr/src/app

# Copy the rest of our application and Bundle app source
COPY . /usr/src/app

# Install our packages
RUN npm install

#Expose our application port
EXPOSE 3000

# Set start command
CMD [ "npm", "start" ]
