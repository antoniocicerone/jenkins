# $ docker build -t jenkins:latest .

FROM debian:9.5

LABEL maintainer="Antonio Cicerone <antoniociceroneweb@gmail.com>"





#todo inserire file add.ini con aggiunta date.timezone nella cartella /etc/php/5.6/apache2/conf.d


RUN apt-get update \
 	&& apt-get install -y --no-install-recommends curl \
 	&& apt-get install -y --no-install-recommends wget \
	&& apt-get install -y --no-install-recommends default-jre \
 	&& apt-get install -y --no-install-recommends git \
	&& apt-get install -y --no-install-recommends nano \
 	&& apt-get install -y --no-install-recommends vim \
 	&& apt-get install -y --no-install-recommends zip \
 	&& apt-get install -y --no-install-recommends unzip \
 	&& wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war \
 	&& java -jar jenkins.war --httpPort=8080




EXPOSE 9090

CMD echo 'ok'