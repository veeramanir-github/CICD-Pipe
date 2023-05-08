FROM tomcat:8.0.20-jre8
# EXPOSE 8080
# COPY ./target/demo.war /var/lib/tomcat/webapps/
COPY ./target/demo.war /usr/local/tomcat/webapps/demoapp.war