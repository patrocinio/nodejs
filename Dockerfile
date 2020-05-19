FROM node:alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY update-stocks/1.0/package.json /usr/src/app
RUN npm install
COPY update-stocks/1.0 /usr/src/app

EXPOSE 8080
RUN npm install
CMD ["npm", "start"]
