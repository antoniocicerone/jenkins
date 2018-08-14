FROM alpine:latest

LABEL maintainer="Antonio Cicerone <antoniociceroneweb@gmail.com>"

ENV JENKINS_HOME /var/jenkins

ENV JENKINS_OPTS ""

ENV JENKINS_VERSION "latest"


WORKDIR /opt

RUN apk add --update git openjdk8-jre ttf-dejavu vim nano curl wget php7 php-mbstring php-iconv php-pear php-dom composer \
    && rm -rf /var/cache/apk/* \
    && wget http://mirrors.jenkins-ci.org/war/${JENKINS_VERSION}/jenkins.war \
	&& wget -O phpunit https://phar.phpunit.de/phpunit-7.phar \
	&& chmod +x phpunit
	
RUN echo "date.timezone=Europe/Rome" >> /etc/php7/conf.d/dev.ini
RUN echo "memory_limit=-1" >> /etc/php7/conf.d/dev.ini	
	
VOLUME  ${JENKINS_HOME}

EXPOSE 8080
EXPOSE 50000

CMD ["java", "-jar", "/opt/jenkins.war", "$JENKINS_OPTS"]
