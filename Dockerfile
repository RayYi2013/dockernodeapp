# This image will be based on the official nodejs docker image
FROM node:latest
 
# Set in what directory commands will run
WORKDIR /home/app

# Install app dependencies
COPY package.json /home/app/

# Install dependencies
RUN npm install
 
# Put all our code inside that directory that lives in the container
ADD . /home/app
 
EXPOSE 9000
 
# The command to run our app when the container is run
#CMD ["node", "server/app.js"]
CMD [ "npm", "start" ]
