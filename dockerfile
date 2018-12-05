FROM node:10-slim
MAINTAINER Christopher Byrnes

# Update the environment
RUN apt-get update -y

WORKDIR /car-dashboard

COPY . .

EXPOSE 3000

RUN npm install
CMD ["npm","start"]
