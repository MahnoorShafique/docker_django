#setting up the base image
FROM python:3.8-slim-buster
#specifying the working directory where code lives  in container. here it is app
WORKDIR /app
#copying the requirements.txt file from local computer project into container requirements.txt file
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
# copying files from local files into container
#first . represents local computer folders and second . represents those in docker container
COPY . .
# port where the Django app runs  
EXPOSE 8000  
# running command
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]


# for running the app:
#1. build the image. : 
#docker build --tag python-django . (t for tag and python-django is tag name )
#2 run the image :
#docker run --publish 8000:8000 python-django(running by using tag name)