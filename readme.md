# Laravel 7 Boilerplate

## What is Laravel Boilerplate

### Anar Bayramov 2020

Laravel Boilerplate provides you basic development environment to develop with laravel and docker.

As each project requires different packages or libraries I tried to keep this one as simple as possible

currently Laravel Boilerplate 7 Included

* Laravel 7
* Most used docker-containers with basic dependencies 
* [Fideloper Proxy](https://github.com/fideloper/proxy)


## Installation

Laravel Boilerplate runs inside docker. In order to use it you must have Docker and docker-compose installed in your local machine. For more please check official [Docker Documentation](https://docs.docker.com/install)



* Install project project from source

```bash
composer create-project --prefer-dist anarbayramov/laravel-boilerplate myproject
```
* Inside src create new .env file from .env.example
```bash
 cp src/.env.example src/.env
```

* Edit .env file Please be aware that boilerplate does not allow any special characters or spaces on project name

* run setup script in root folder

```bash
 ./setup
```
* Thats it!

Your project should be online at http://localhost or https://localhost
Please be aware that you'll get `Your connection to this site is not secure` warning because of self signed SSL certificates are not trusted by default. You can search for `how to make self signed ssl certificates trust` based on your operating system.



## Continuous Deployment

LaravelBoilerplate has bitbucket pipelines as default. In order to have auto deploy your code to your staging and production:
1) You need to give SSH access to Bitbucket Pipeline
2) You need to give SSH access from your server to your bitbucket account

Afterwards under *deployment/staging/deploy.sh* You need to specify
* SSH username and server ip
* Your project root
