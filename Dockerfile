FROM jenkins:2.32.1

RUN /usr/local/bin/install-plugins.sh swarm blueocean docker-workflow \
  docker-custom-build-environment git github job-dsl ansicolor timestamper \
  workflow-aggregator
  

# remove executors in master
COPY master-executors.groovy /usr/share/jenkins/ref/init.groovy.d/
USER root
