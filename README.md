# Personal Project: Django Recipe API

## Description

Recipe API is a REST API backend system developed in Python, Django (4.0), and Django REST Framework (3.13). This system allows users to create, edit, and manage recipes including information about title, price, cooking time, ingredients, and classification tags such as "comfort food", "vegetarian", or "dessert". In addition, the system also supports uploading and viewing images of recipes.

## Installation Instructions
```
# Step 1: Create and config .env file according to .env.sample template
cp .env.sample .env

# Step 2: Build and run app with docker-compose
docker-compose -f <docker-compose file> up --build

# Optional: Run commad with docker-compose
docker-compose run --rm app sh -c '<your command>'
```

## Project Structure
```tree
├── .github                                     : Contains configuration files for GitHub Action.
|   └── workflows
|       └── checks.yml
|
├── app                                         : Django application code.
|   └── config                                  : Contains configuration files for the Django application.
|       └── asgi.py                             : Configuration file for the Asynchronous Server Gateway Interface (ASGI).
|       └── settings.py                         : Main Django settings file, containing global application configurations.
|       └── wsgi.py                             : Configuration file for the Web Server Gateway Interface (WSGI).
|       └── urls.py                             : Defines the URL routing for the Django application.
|
|   └── core                                    : Contains the core components of the Django application - code shared between multiple apps.
|       └── management                          : Custom Django commands.
|           └── commands
|               └── ...
|       └── migrations                          : Stores migration files to manage database schema changes.
|           └── ...
|       └── tests                               : Contains unit tests for various application components.
|           └── ...
|       └── app.py                              : Main Django application initialization file.
|       └── admin.py                            : Configuration for the Django admin interface.
|       └── models.py                           : Defines the Django models (representing database tables).
|       └── views.py                            : Defines the application's views (request handling logic).
|
|   └── user                                    : Auth services.
|       └── tests                               : Contains unit tests for user-related functionalities.
|           └── ...
|       └── app.py                              : Main initialization file for the user management application.
|       └── serializers.py                      : Defines serializers for serializing/deserializing user data.
|       └── views.py                            : Defines views for handling user-related requests.
|       └── urls.py                             : Defines URL routing for the user management application.
|
|   └── recipe                                  : Recipe services.
|       └── tests                               : Contains unit tests for recipe-related functionalities.
|           └── ...
|       └── app.py                              : Main initialization file for the user management application.
|       └── serializers.py                      : Defines serializers for serializing/deserializing recipe data.
|       └── views.py                            : Defines views for handling recipe-related requests.
|       └── urls.py                             : Defines URL routing for the recipe management application.
|
|   └── .flake8                                 : Configuration file for the flake8 code quality checker tool.
|   └── manage.py                               : Main script for running Django management commands.
|
├── proxy                                       : Contains configurations related to the proxy server (if used).
|   └── default.conf.tpl                        : Template configuration file for the proxy server.
|   └── Dockerfile                              : Script for building a Docker image for the proxy server.
|   └── run.sh                                  : Script for running the proxy server.
|   └── uwsgi_params                            : Configuration file for uWSGI (WSGI server) parameters.
|
├── scripts                                     : Contains custom scripts for the project.
|   └── run.sh
|
├── Dockerfile                                  : Script for building a Docker image for the entire project.
├── docker-compose.yml                          : docker-compose configuration file for project in local.
├── docker-compose-deploy.yml                   : docker-compose configuration file for project deployment (optional).
|
├── requirements.txt                            : File listing the Python libraries required for the project.
├── requirements.dev.txt                        : File listing Python libraries required for development (such as testing libraries).

├── .env.sample                                 : Template configuration file for the project's required environment variables.
├── .env                                        : Environment variables configuration.
|
└── .gitignore                                  : Gitignore file.
```