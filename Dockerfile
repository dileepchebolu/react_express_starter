FROM node:alpine3.11
MAINTAINER dileepchebolu@gmail.com
LABEL application="reactandexpress"
COPY react_express_starter/* /usr/src/app
WORKDIR /usr/src/app
RUN npm install\
    npm run client-install
ENTRYPOINT npm run
CMD dev
USER jenkins
