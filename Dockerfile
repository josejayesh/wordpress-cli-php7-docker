FROM wordpress:php7.0-apache
MAINTAINER Jayesh Jose
RUN apt-get update && apt-get install -y sudo less

# Add WP-CLI 
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY permission.sh /bin/wp
RUN chmod +x /bin/wp-cli.phar /bin/wp

#Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*




