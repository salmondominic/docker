FROM httpd:2.4
RUN apt-get update && cd /usr/local/apache2/conf && echo "ServerName 13.233.95.138" >> httpd.conf && apachectl start
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/solitude.zip /usr/local/apache2/htdocs/
WORKDIR /usr/local/apache2/htdocs/
EXPOSE 80
CMD ["echo" "welcome my test site"]
