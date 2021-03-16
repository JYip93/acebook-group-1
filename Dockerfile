FROM node:alpine

ENV NODE_ENV=production

WORKDIR /acebook-group-1

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
