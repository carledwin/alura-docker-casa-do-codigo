#configurando variáveis de ambiente no arquivo docker
FROM node:latest
MAINTAINER Carl Edwin
ENV NODE_ENV=production
ENV PORT=3000
COPY . /var/www3
WORKDIR /var/www3
RUN npm install
EXPOSE $PORT
ENTRYPOINT npm start
