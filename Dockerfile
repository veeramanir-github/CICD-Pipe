FROM usmanawan/ubuntutomcat
EXPOSE 8080
COPY ./target/demo.war /var/lib/tomcat/webapps/