FROM sunyi00/ubuntu-java


RUN apt-get update && apt-get install -y \
        tomcat7 \
        tomcat7-user \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir /lain && cd /lain && tomcat7-instance-create app
