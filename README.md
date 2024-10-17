# Dockerized-tutorial-app
This project demonstrates how to create a simple web tutorial site using basic web development tools, and how to use Docker to containerize the application for easy deployment. With this setup, you can extend the application by adding more tutorials, styles, or JavaScript functionality.
Dockerfile
# Use the official Ubuntu image as a base
FROM ubuntu:20.04

# Install necessary packages: Nginx, curl, and dependencies
RUN apt-get update && apt-get install -y nginx curl

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the local files (HTML, CSS, and JavaScript) to the container's web directory
COPY index.html /var/www/html/
COPY styles.css /var/www/html/
COPY scripts.js /var/www/html/

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

Explanation of the Dockerfile:
Base Image:

We're using ubuntu:20.04 as the base operating system.
Install Nginx:

The RUN command updates the package list and installs Nginx (a web server) and any dependencies.
Working Directory:

WORKDIR sets the working directory inside the container to /var/www/html, where Nginx serves files by default.
Copy Files:

The COPY commands copy the HTML, CSS, and JavaScript files from your local machine into the container.
Expose Port:

The EXPOSE 80 line tells Docker that the container will listen on port 80, which is the default HTTP port.
Start Nginx:

The CMD command runs Nginx in the foreground when the container starts.
Steps to Build and Run the Docker Container:
Save the Dockerfile in the same directory where your index.html, styles.css, and scripts.js files are located.

Build the Docker Image: In the terminal, navigate to the directory where your Dockerfile is located and run the following command:

docker build -t tutorial-app .

This will map port 80 from inside the container to port 8080 on your local machine.

Access the App:

Open a browser and go to http://localhost:8080 to see your tutorial website running inside the Docker container.
