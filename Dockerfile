#Use the official ubuntu image as a base
FROM ubuntu:20.04

#install necessary package: Nginx, curl and dependencies
RUN apt-get update && apt-get install -y nginx curl

#Set the working directory inside the container
WORKDIR /var/www/html

#Copy the local files (html,css and javascript) to container web directory 
COPY index.html /var/www/html
COPY styles.css /var/www/html
COPY scripts.js /var/www/html

#Expose port 80 for the web server 
EXPOSE 80

#start Nginx in the forground 
CMD ["nginx", "-g", "daemon off;"]

