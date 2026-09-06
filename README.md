# Linux Server Monitoring & Docker Web Application

## Project Description

This is a beginner-level DevOps project built on Ubuntu Linux.

The project runs a simple web application inside a Docker container
and uses a Bash script to monitor basic server information.

## Technologies Used

- Linux (Ubuntu)
- Bash
- Docker
- Nginx
- Git
- GitHub

## Project Features

- Runs a web application using Docker
- Uses Nginx as the web server
- Maps Docker port 80 to host port 8080
- Checks basic disk usage
- Checks Docker container status
- Saves monitoring output to a log file

## How to Run

Build the Docker image:

    docker build -t devops-web-app .

Run the container:

    docker run -d --name devops-web-app-container -p 8080:80 devops-web-app

Open the application:

    http://localhost:8080

Run the monitoring script:

    ./monitor.sh

Save monitoring output to a log:

    ./monitor.sh >> logs/monitoring.log

## What I Learned

- Basic Linux commands
- Bash scripting and if conditions
- Docker images and containers
- Docker port mapping
- Basic networking
- Basic server monitoring
- Git and GitHub
