# Let's use the official Passenger container.
FROM nginx:latest
MAINTAINER Aharon Nadav

RUN apt-get update
RUN apt-get install -y git

RUN git clone https://github.com/aharonadav/hello-world.git
RUN cd hello-world
RUN rm -rf /usr/share/nginx/html/*
RUN mv hello-world/* /usr/share/nginx/html

EXPOSE 80