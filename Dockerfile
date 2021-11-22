FROM node:14


WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm run sonar

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm","start"]
