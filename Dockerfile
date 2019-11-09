# Choose default image for dockerfile
FROM node:10
# Create app directory
WORKDIR /usr/src/app

# Choose everything from folder
COPY . .

# Expose port picked by Heroku. Otherwise we couldn't connect to the server running inside a docker
EXPOSE $PORT

# npm run start
CMD [ "npm", "run", "start" ]