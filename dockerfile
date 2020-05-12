FROM node:8.15.1-alpine

# create project folder
RUN mkdir /app

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json /app/

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory
COPY . /app/

# run application
CMD ["npm", "start"]

EXPOSE 80
