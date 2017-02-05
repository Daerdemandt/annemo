FROM node:7

MAINTAINER Roman Kuzmichev daerdemandt@gmail.com

# install coffee-script
RUN npm install -g coffee-script

# TODO: set proper USER

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies
COPY package.json /app/
#RUN ls
RUN npm install

# Bundle app source
COPY * /app/
#RUN ls

# Expose port
EXPOSE  3001

#CMD bash
# Run app using nodemon
#CMD ["cake", "forever-start"]
#CMD ["node_modules/forever/bin/forever", "start", "-c", "coffee", "--sourceDir", "./", "emotions.coffee"]
#CMD ["echo", "start", "-c", "coffee", "--sourceDir", "./"]
CMD ["coffee", "emotions.coffee"]
