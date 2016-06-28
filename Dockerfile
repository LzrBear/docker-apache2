FROM ubuntu:14.04
MAINTAINER Sameer Saini (sameer.saini@outlook.com)

# install dependencies
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		apache2 \
	&& rm -r /var/lib/apt/lists/*

# Default command	
CMD ["apachectl", "-D", "FOREGROUND"]

# Ports
EXPOSE 80