FROM node:latest

RUN apt-get update
RUN apt-get install python3-pip -y
RUN apt-get install jq -y
RUN apt-get install zip -y
RUN apt-get install xmlstarlet -y
RUN pip install yq --break-system-packages
RUN npm install @salesforce/cli --global
RUN echo 'y' | sfdx plugins:install sfdx-git-delta
