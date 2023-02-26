FROM        mcr.microsoft.com/devcontainers/javascript-node:0-18-bullseye

WORKDIR     /var/www

COPY        package.json package-lock.json ./

RUN         npm install

COPY        . .
EXPOSE      3000

ENTRYPOINT  ["npm", "start"]
