FROM tomcat:8-jre8
MAINTAINER vryzhenko@integrio.net

ADD /target/portal-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
ADD /tomcat/*.xml /usr/local/tomcat/conf/
ADD /tomcat/*.jar /usr/local/tomcat/lib/

CMD ["catalina.sh", "run"]
