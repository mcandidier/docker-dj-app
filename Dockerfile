FROM python:3

MAINTAINER mcandidier

ENV PYTHONUNBUFFERED 1

# We create a project directory to our container
RUN mkdir /app

# Set our project directory
WORKDIR /app

# We copy our local requirements.txt to our container
COPY requirements.txt /app/

# Install requirements.txt to our container
RUN pip install -r requirements.txt

# We copy our local project files to our project directory
COPY ./app /app/

# We copy entrypoint file to our container
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

# make sure to make as executable
# run chmod u+x docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]