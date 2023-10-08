FROM tomcat:8-jdk17-corretto
COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
