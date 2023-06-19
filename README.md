## A Simple Project of Django CRUD (Create, Retrieve, Update and Delete) Application Using Dockerfile and docker compose file

### some snapshots as a result of this project:

<h1 align="center">
 
<picture><img src = "https://github.com/Nidhi-Bharti2407/Django-CRUD-App-with-Docker-Compose/blob/master/Screenshot01.png" width = 2000px></picture> <br> 
 
<picture><img src = "https://github.com/Nidhi-Bharti2407/Django-CRUD-App-with-Docker-Compose/blob/master/Screenshot02.png" width = 2000px></picture> <br>
 
<picture><img src = "https://github.com/Nidhi-Bharti2407/Django-CRUD-App-with-Docker-Compose/blob/master/Screenshot03.png" width = 2000px></picture> <br>
 
<picture><img src = "https://github.com/Nidhi-Bharti2407/Django-CRUD-App-with-Docker-Compose/blob/master/Screenshot04.png" width = 2000px></picture> <br>
 
  </h1>


### Step 1: setup Django project in windows

First of all, use `python -m venv venv` to create a "virtual environment" and then activate the virtual environment in your directory `venv\Scripts\activate`.

Then install Django `pip install django`.

Afterthat Create a project `django-admin startproject myproject`.

Run this project and test it 

```
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
```

### Step 2:  create and build a dockerfile for deploy the project

`docker build -t <tagname> .`

when image is successfully build then push this image on docker hub

`docker push <tagname>`

### Step 3:  create a docker compose for deploy and pull this image from docker hub

`docker compose up -d`















