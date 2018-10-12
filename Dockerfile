FROM node:boron

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install express

COPY server.js /usr/src/app

EXPOSE 5555

CMD [ "node" , "server.js" ]
