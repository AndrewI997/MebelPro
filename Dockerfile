# syntax=docker/dockerfile:1
   
FROM node:18-alpine
WORKDIR /mebelpro
COPY . .
RUN yarn set version stable
RUN yarn plugin import workspace-tools
RUN yarn install
CMD yarn dev
EXPOSE 3000