FROM jenkinsci/jenkins
USER root
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins
USER jenkins
ENV JAVA_OPTS="-Xmx2048m"
ENV JENKINS_OPTS="--logfile=/var/log/jenkins/jenkins.log"


