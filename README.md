## A Simple Project of Django CRUD (Create, Retrieve, Update and Delete) Application Using Dockerfile and docker compose file And Minikube

### some snapshots as a result of this project:

<h1 align="center">
 
<picture><img src = "https://github.com/Nidhi-Bharti2407/Django-CRUD-App-with-Docker-Compose/blob/master/Screenshot01.png" width = 2000px></picture> <br> 
 
  </h1>


### Step 1: setup Django project in windows

First of all, use `python -m venv venv` to create a "virtual environment" and then activate the virtual environment in your directory `venv\Scripts\activate`.

Then install Django `pip install django`.

Afterthat Create a project `django-admin startproject myproject`.

And then create a task app `python manage.py startapp tasks`.

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

`docker-compose build`
`docker-compose up -d`

### Step 4:  access containers and check logs and db login

`docker exec -it <container-name> bash`
`docker logs <container-name>`
`mysql -u root -p`


## Django CRUD Application deploy Using Minikube

I have deployed this django crup app with kubernetes. the django-crud-deployment.yaml pull image of djangoapp from dockerhub. I have done autoscaling and autohealing with deployment for this djangoapp. There is two pods running in this deployment when any pod of crash or something happens then deployment will automatically create the pods.

### Step 1: setup Minikube 

Install Minikube packages and then start the cluster `minikube start --force` with docker.

And we can see nodes and pods just type this command `kubectl get nodes` and `kubectl get pods`



### Step 2: Create deployment file and apply 

After creating `django-crud-deployment.yaml` apply  this file `kubectl apply -f <filename.yaml>`

Afterthat provide a nodeport service for expose this node. 

`kubectl expose deployment django-crud-deployment --type=NodePort --port=8080`

### Step 2: Access, Describe and get logs 

we can access this port `curl <Internal-ip>:<node-port>` i.e range between 30000-32767

we can describe the service for all details nodeports and all `kubectl describe services django-crud-deployment`

for finding logs `kubectl logs <podname>`

and for access inside the conatiner `kubectl exec -it <podname> -c <containername> bash`

Expose the web application `http://<public-ip:nodeport>`










