# Use official Tomcat 9 base image
FROM tomcat:9-jdk11

# Remove default apps (optional, to clean up ROOT)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into webapps as ROOT.war
COPY sample.war /usr/local/tomcat/webapps/ROOT.war

# Expose default Tomcat port
EXPOSE 8080
