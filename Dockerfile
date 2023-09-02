FROM tomcat:8.0
RUN apt update
WORKDIR /usr/local/tomcat
ADD target/*.war webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
