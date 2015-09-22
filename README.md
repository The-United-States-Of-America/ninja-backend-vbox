# Ninja Backend Automated Environment

## Required Tools

To utilize this bootrstap for the Ninja backend environment, the following software is required on your host machine:

* Vagrant ~1.7.4

## Setup

After cloning this repository, use a shell of your choice and navigate to the root directory of the repository. Once in the root directory, run `vagrant up`.
Vagrant will install the latest version of Ubuntu 14.04 for you, as well as the latest version of Docker, and pull the relevant and necessary Docker images to run the Ninja backend.

This Vagrant file should automatically turn on, and run any relevant and necessary containers for use.

### Writing a new Node.js container

To run an interactive shell inside a docker images
docker run -i -t ubuntu /bin/bash
