# Laravel 5.6 Boilerplate 

## What is Laravel Boilerplate

### Anar Bayramov 2018

Laravel boilerplate provides you many basic and advanced features to start a new project.
As each project requires different packages or libraries I tried to keep this one as simple as possible 

currently Laravel boilerplate 5.6 Included

* Laravel 5.6 
* Most used docker-containers with lots of dependencies (Credits and many thanks to [Laradock](https://github.com/laradock/laradock) as it is simplified version of laradock)  
* Local SSL and HTTPS using openssl
* [Spatie Laravel Permission](https://github.com/spatie/laravel-permission)
* [Laravel Elastic Search](https://github.com/cviebrock/laravel-elasticsearch)
* [Laravel Collective](https://github.com/laravelcollective/html)
* [Fideloper Proxy](https://github.com/fideloper/proxy)


## Installation

LaravelBoilerplate runs inside docker. In order to use it you must have Docker installed on your local computer. For more please check official [Docker Documentation](https://docs.docker.com/install)

 

* Clone project from source
 
```bash
 git clone git@github.com:anarbayramov/laravel-boilerplate.git <project-name 
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




## Continuous Deployment 

LaravelBoilerplate has bitbucket pipelines as default. In order to have auto deploy your code to your staging and production: 
1) You need to give SSH access to Bitbucket Pipeline
2) You need to give SSH access from your server to your bitbucket account 

Afterwards under *deployment/staging/deploy.sh* You need to specify
* SSH username and server ip
* Your project root
