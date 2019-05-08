#installing base image
FROM node:alpine

WORKDIR /usr/app
#install some dependences
copy ./package.json /.

RUN npm install
copy ./ ./
#default command
CMD ["npm","start"]