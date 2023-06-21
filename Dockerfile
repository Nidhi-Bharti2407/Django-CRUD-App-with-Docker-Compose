FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Configure project
WORKDIR /django-crud-app
COPY requirements.txt /django-crud-app/requirements.txt

RUN pip3 install -r requirements.txt

COPY . /django-crud-app
EXPOSE 8080
ENTRYPOINT python3 manage.py runserver 0.0.0.0:8080 --noreload
