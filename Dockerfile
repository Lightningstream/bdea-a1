FROM apache/zeppelin:0.10.1
USER root
RUN apt-get -y update
RUN apt-get -y install gnupg
RUN wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list 
RUN apt-get -y update
RUN apt-get -y install -y mongodb-mongosh