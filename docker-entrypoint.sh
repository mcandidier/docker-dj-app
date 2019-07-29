#!/bin/bash

# Apply database migrations
echo "Migrating the database before starting the server"
python manage.py migrate
echo "Starting server at port 8000"
python manage.py runserver 0.0.0.0:8000