FROM node:alpine3.11
MAINTAINER dileepchebolu@gmail.com
LABEL application="reactandexpress"
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN npm install\
    && npm run client-install
CMD [ "npm", "run", "dev" ]
