Introduction
This application helps the user by managing the operation of the various functions
available to a driver of a vehicle to include the following:
- headlights
- interior lights
- radio
- ETA
- places of interest

Deployment
This application is a car dashboard AI assistant. It is an open source application
from IBM that can run locally or from the cloud. For this project, I first
deployed it to a vagrantbox in accordance with the procedures we followed in
class. It was a matter of starting a VM instance on AWS and connecting the dashboard
application. This was done by making a Docker image of the application files
and then containerizing the image in the AWS image. Once the image was rendered,
from within the Ubuntu VM, I ran the following command to spin up the application:
"docker run --name car-dashboard -p3000:3000 solo18/car-dashboard," which pulled
the image from Dockerhub and ran it in the AWS container.

Install the dependencies

    ```
    npm install

# This application maintains the following dependencies:
- node
- Docker
- npm
- gulp
- github
- flask

API specification
 - my-watson-assistant-service
 - speech-to-text-service
 - text-to-speech-service
