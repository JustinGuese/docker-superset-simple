FROM ubuntu:latest
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install build-essential libssl-dev libffi-dev python3-dev python3-pip libsasl2-dev libldap2-dev mysql-client python3-dev default-libmysqlclient-dev build-essential -y
RUN pip3 install Pillow
RUN pip3 install apache-superset
RUN pip3 install psycopg2-binary mysqlclient sqlalchemy-redshift
RUN mkdir /root/.superset/
COPY ./src/superset.db /root/.superset/ 
RUN superset db upgrade
RUN superset init
ENTRYPOINT superset run -p 8088 -h 0.0.0.0 --with-threads --reload --debugger
