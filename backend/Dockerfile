# node with olpine os
FROM node:18-alpine3.16

# global installation 
RUN npm i -g ts-node
RUN npm i -g nodemon

# set up the working directory
WORKDIR /app

#copy only package*.json (now i dont know why)
COPY package*.json /app

# copy files from this project to the working directory in image
COPY . /app

# run command
RUN npm i


# execution command
ENTRYPOINT npm start