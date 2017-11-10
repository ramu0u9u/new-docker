# Docker Project Template

## Purpose
To provide the common files for building, running a docker project

## Concepts:
### Simple command-based Docker environments:
- Docker environment should be very simple as just one click (or one command) to start a Docker-based applications without fudging and mistakes in launch containers.
- Provide the simplest (ready-to-use) way for running Docker-based command-based envionrment for supporing daily development needs ranging from base docker images (e.g. JDK, Python, ...) up to advanced applications/servers (e.g., scala-ide-docker, Netbean-docker, Eclipse-docker, and many other big data analytics, machine learning, and semantic knowlege graph applications/servers).

### Only needs two scripts: "./run.sh" and "./build.sh"
- "./run.sh" to instantly stand up your Docker-based application development environment (note that, for Product usage, please enhance all aspects of security -- we are not responsible for security ignornace for your deployments since it is your responsibility)

### Pure Container-based Developer Desktop paradigm
- With our above "simple-minded simple-use", we provide many commonly used "pure docker-based IDEs, Applications, Servers" for software development daily needs.

## Start:
- This project template folder assumes you like to adop and use simple command-based Docker lifecycle paradigm as publicly available in:
1. OpenKBS GIT HUB [https://hub.docker.com/r/openkbs/] - for pulling the ready to use public Docker Images
2. OpenKBS Docker HUB [https://github.com/DrSnowbird/] - for advanced users like to build and customize to your own flavor using our open source environments.

## Usage
1. Copy all the folder's files to your destination, i.e., your new project folder.
2. Globally replace "docker-project-template" for all the files with your new Docker project repo name, e.g., scala-ide-docker.
3. Modify two or three files below depending upon your use case:
- Dockerfile
- docker-compose.yaml
- docker.env (if you need to modify docker environments input file)

## Build
- This project provides a simple Dockerfile for the purpose of illustration only. You need to extend/modify the Docker to
support whatever you want to do.
```
./build.sh
```
## Run
- To run the simple example build image; it will pop up X11 to display Firefox docker-based browser.
```
./run.sh
```

## Utility tools to get you start from a new (freshly installed) Host OS envionrment
- Use those scripts under ./bin has several useful bash scripts to jump start what you need.
1. dockerCE-install.sh: Install docker CE with latest version available.
2. portainer_resume.sh: Launch portainer to manage all you Docker-based containers (some
3. container-launcher.sh
