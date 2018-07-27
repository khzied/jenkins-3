
FROM jenkins/jenkins:lts


# Install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh $(cat /usr/share/jenkins/ref/plugins.txt | tr '\n' ' ')


USER root

USER jenkins

VOLUME ["/var/jenkins_home", "/var/run/docker.sock"]