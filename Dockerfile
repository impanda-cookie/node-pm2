FROM node:latest
MAINTAINER cowpanda

RUN npm install -g pm2@latest

VOLUME ["/app"]
ADD start /start
RUN chmod 755 /start
CMD ["/start"]
WORKDIR /app

EXPOSE 80
