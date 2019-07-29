# Banana app project

Example django project runs in docker development.

##Getting started

Make sure to have docker in your local machine, if you don't have one you can install it here.

for [Mac](https://docs.docker.com/docker-for-mac/), [Linux](https://docs.docker.com/engine/installation/linux/) and [Windows](https://docs.docker.com/docker-for-windows/).


### Installing

1. Download this repository

2. Build the image and run the container.
    `$ docker-compose up --build`

3. Navigate http://0.0.0.0:8000 in your browser.

Thats all. 


### Other commands
To run other Django management commands:

    docker-compose exec web python manage.py createsuperuser
    docker-compose exec web python manage.py migrate

Or
    `docker exec -it your_container_name python manage.py createuser`

To access posgress database inside our container
    `docker-compose exec db psql -U postges`

### Docker commands:
To show list of docker container that are up and running
    `docker ps`

To turn off active containers
   `docker-compose down`

To access your python container
    `docker exec -it your_container_name bash`