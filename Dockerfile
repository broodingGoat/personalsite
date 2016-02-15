FROM httpd:2.4

MAINTAINER Sushaant Mujoo <sushaant.mujoo@gmail.com>
LABEL for="personalsite"

COPY ./public-html/ /usr/local/apache2/htdocs/