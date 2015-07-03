# Epic Spindle Template for Really Awesome Django Apps (Estrada)

Template to provide defaults for new Django 1.8+ projects with docker + postgres included.

## Requirements

Install pip
```
# If you have PIP installed skip this part
Official guide: https://pip.pypa.io/en/latest/installing.html

# Example for Ubuntu
sudo apt-get install python-pip

# Upgrade pip
pip install -U pip
```

A working django version >= 1.5 for generating the project from a template
```
sudo pip install django
```

Docker and docker-compose
```
Depending on your machine the installation process might be different check:
https://docs.docker.com/installation/
https://docs.docker.com/compose/install/
```

Example for Ubuntu
```
# Docker
wget -qO- https://get.docker.com/ | sh

# docker-compose
sudo pip install docker-compose
```

## Usage

To create a new django project with this template:
```
django-admin.py startproject --template=https://github.com/wearespindle/Estrada/archive/master.zip --extension=py,yml,sh --name=Dockerfile,spindle.html project_name
```

Build the Docker environment
```
cd /path/to/project/root # Where the docker-compose.yml lives.
docker-compose build
docker-compose run web python manage.py migrate
docker-compose up
```

Visit the site at localhost:8000 or your dockerhost_ip:8000
