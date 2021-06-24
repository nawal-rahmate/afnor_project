FROM adoptopenjdk/openjdk11
MAINTAINER Nawal <nawal@afnor.com>
  
  
# on va installer les packages qu'on aura besoin
RUN apt-get update 
#RUN apt-get install dos2unix
RUN apt-get clean

# Install wait-for-it

# Installer le jar file 
ADD afnor.jar /app/afnor.jar

# Installer Running file
ADD ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
#RUN dos2unix /usr/local/bin/start.sh

# Start l'Application
CMD ["/bin/bash", "/usr/local/bin/start.sh"]


