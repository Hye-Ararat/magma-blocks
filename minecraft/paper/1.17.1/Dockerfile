FROM openjdk:16-slim

RUN adduser hye --home /home/hye --disabled-password --uid 1002 --disabled-login
#The EULA line will be removed in production
RUN echo "eula=true" > /home/hye/eula.txt
RUN apt-get update && apt-get install wget -y
RUN cd /home/hye && wget -O server.jar https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/300/downloads/paper-1.17.1-300.jar


USER hye
ENV USER=hye HOME=/home/hye
WORKDIR /home/hye
COPY ./server.properties /server.properties
COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]