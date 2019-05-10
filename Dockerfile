#installing base image
FROM node:alpine

WORKDIR "/app"
#install some dependences
COPY package.json .

RUN npm install

COPY . .

EXPOSE 80
#default command
CMD ["npm","start"]