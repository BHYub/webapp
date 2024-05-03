FROM ubuntu:18.04
MAINTAINER H.Brahim (undertale-b@outlook.fr)
RUN apt-get update
RUN DEBIAN8FRONTEND=noninteractive apt-get install -y nginx git
#ADD static-website-example/ /var/www/html
RUN rm -rf /var/www/html
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

