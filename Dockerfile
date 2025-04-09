# Use the official Tomcat image
FROM tomcat:9.0

# Remove default web apps in Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the Tomcat webapps directory
COPY target/product-service-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
