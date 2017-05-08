# Epic Spindle Template for Really Awesome Django Apps (ESTRADA)

Template to provide defaults for new Django projects with docker + mariadb included.

We also wrote a blog about Estrada: https://wearespindle.com/articles/estrada-or-epic-spindle-template-for-really-awesome-django-apps

## Status

 Maintained

## Usage

### Requirements

Install pip
(If you have PIP installed skip this part)

Official guide: https://pip.pypa.io/en/latest/installing.html

Example for Ubuntu
```
sudo apt-get install python-pip

# Upgrade pip
pip install -U pip
```

A working django version >= 1.5 for generating the project from a template. The
created project will use django 1.8+ but we need a django version to create
the project from this template.
```
sudo pip install django
```

Docker and docker-compose

Depending on your machine the installation process might be different check:
https://docs.docker.com/installation/
https://docs.docker.com/compose/install/

Example for Ubuntu
```
# Docker
wget -qO- https://get.docker.com/ | sh

# docker-compose
sudo pip install docker-compose
```

### Installation

To create a new django project with this template:
```
# Replace project_name with the name of your project
django-admin startproject --template=https://github.com/wearespindle/estrada/archive/master.zip --extension=py,yml,sh,sql --name=Dockerfile,spindle.html project_name
```

Build the Docker environment
```
cd /project_name # Where the docker-compose.yml lives.
docker-compose build
docker-compose build db
# Run this twice if first time fails (slow DB initialization first time)
docker-compose run web python manage.py migrate
```

### Running

```
docker-compose up
```

Visit the site at localhost:8005 or your dockerhost_ip:8005

### Local and production settings

In `{project_name}/settings` some of the settings are split up between `local.py`
and `prod.py`. These files are used for the settings that are different between
development (local) and production (prod). The general settings are in `base.py`.
You are encouraged to use environment variables for any sensitive information

## Contributing

See the [CONTRIBUTING.md](CONTRIBUTING.md) file on how to contribute to this project.

## Contributors

See the [CONTRIBUTORS.md](CONTRIBUTORS.md) file for a list of contributors to the project.

## Roadmap

### Changelog

The changelog can be found in the [CHANGELOG.md](CHANGELOG.md) file.

### In progress

 * Maintaining

### Future

 * Update all packages to newer versions

## Get in touch with a developer

If you want to report an issue see the [CONTRIBUTING.md](CONTRIBUTING.md) file for more info.

We will be happy to answer your other questions at opensource@wearespindle.com

## License

ESTRADA is made available under the MIT license. See the [LICENSE file](LICENSE) for more info.
