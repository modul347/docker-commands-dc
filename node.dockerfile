FROM        node:"mcr.microsoft.com/devcontainers/javascript-node:0-18-bullseye"

ARG         PACKAGES=nano

RUN         apk update && apk add $PACKAGES

WORKDIR     /var/www

COPY        package.json package-lock.json ./

RUN         npm install

COPY        . .
EXPOSE      3000

ENTRYPOINT  ["npm", "start"]
