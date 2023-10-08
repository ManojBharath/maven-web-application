FROM tomcat:9-jdk17-corretto
COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-app*.war
