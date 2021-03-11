# Apache Superset as simple dockerimage

You can find the original superset setup at https://github.com/apache/superset including:
- redis
- postgresql as database
- and much more, 

but I needed a simpler setup just including superset for development. 

# Installation / docker-compose

`docker-compose up -d` 
and it will build automatically. 

## docker run

`docker run guestros/apache-superset-simple -p 8088:8088`

## default user and password

The superset.db contains the user and pw which is

- admin
- admin
Please change

## Accessing the Superset dashboard

Head over to <YOURIP>:8088 and login using admin admin. 
Change your PW!

### Changing files and custom installation

Superset is installed in /usr/local/lib/python3.8/dist-packages/superset