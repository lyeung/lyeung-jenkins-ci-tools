#FROM jenkins:1.651.1
FROM lyeung/jenkins-jdk8-maven3:latest
MAINTAINER Lenming Yeung (lenming.yeung@gmail.com)
USER root


COPY hudson.tasks.Maven.xml /var/jenkins_home/hudson.tasks.Maven.xml
COPY hudson.maven.MavenModuleSet.xml /var/jenkins_home/hudson.maven.MavenModuleSet.xml
COPY config.xml /var/jenkins_home/config.xml
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

USER jenkins
