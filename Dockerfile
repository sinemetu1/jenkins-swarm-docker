FROM jenkins:2.32.1

RUN /usr/local/bin/install-plugins.sh swarm blueocean docker-workflow git github

# remove executors in master
COPY master-executors.groovy /usr/share/jenkins/ref/init.groovy.d/
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
USER root
