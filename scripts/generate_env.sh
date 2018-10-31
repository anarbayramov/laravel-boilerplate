source src/.env

printf '###########################################################
###################### General Setup ######################
###########################################################

### Paths #################################################

# Point to the path of your applications code on your host
APP_CODE_PATH_HOST=../src

# Point to where the `APP_CODE_PATH_HOST` should be in the container. You may add flags to the path `:cached`, `:delegated`. When using Docker Sync add `:nocopy`
APP_CODE_PATH_CONTAINER=/var/www:cached

# Choose storage path on your machine. For all storage systems
DATA_PATH_HOST=../data

### Drivers ################################################

# All volumes driver
VOLUMES_DRIVER=local

# All Networks driver
NETWORKS_DRIVER=bridge

### Docker compose files ##################################

# Select which docker-compose files to include. If using docker-sync append `:docker-compose.sync.yml` at the end
COMPOSE_FILE=docker-compose.yml

# Change the separator from : to ; on Windows
COMPOSE_PATH_SEPARATOR=:

### PHP Version ###########################################

# Select a PHP version of the Workspace and PHP-FPM containers (Does not apply to HHVM). Accepted values: 7.2 - 7.1 - 7.0 - 5.6 - 5.5
PHP_VERSION=7.2

### PHP Interpreter #######################################

# Select the PHP Interpreter. Accepted values: hhvm - php-fpm
PHP_INTERPRETER=php-fpm

### Docker Host IP ########################################

# Enter your Docker Host IP (will be appended to /etc/hosts). Default is `10.0.75.1`
DOCKER_HOST_IP=10.0.75.1

### Environment ###########################################

# If you need to change the sources (i.e. to China), set CHANGE_SOURCE to true
CHANGE_SOURCE=false

### Docker Sync ###########################################

# If you are using Docker Sync. For `osx` use 'native_osx', for `windows` use 'unison', for `linux` docker-sync is not required
DOCKER_SYNC_STRATEGY=native_osx

###########################################################
################ Containers Customization #################
###########################################################

### WORKSPACE #############################################


WORKSPACE_COMPOSER_GLOBAL_INSTALL=true
WORKSPACE_COMPOSER_REPO_PACKAGIST=
WORKSPACE_INSTALL_NODE=true
WORKSPACE_NODE_VERSION=stable
WORKSPACE_NPM_REGISTRY=
WORKSPACE_INSTALL_YARN=true
WORKSPACE_YARN_VERSION=latest
WORKSPACE_INSTALL_PHPREDIS=true
WORKSPACE_INSTALL_WORKSPACE_SSH='$XDEBUG_ENABLED'
WORKSPACE_INSTALL_XDEBUG='$XDEBUG_ENABLED'
WORKSPACE_INSTALL_LDAP=false
WORKSPACE_INSTALL_SOAP=false
WORKSPACE_INSTALL_IMAP=false
WORKSPACE_INSTALL_MONGO=false
WORKSPACE_INSTALL_AMQP=false
WORKSPACE_INSTALL_V8JS=false
WORKSPACE_INSTALL_LARAVEL_ENVOY=false
WORKSPACE_INSTALL_LARAVEL_INSTALLER=false
WORKSPACE_INSTALL_DEPLOYER=false
WORKSPACE_INSTALL_PRESTISSIMO=false
WORKSPACE_INSTALL_LINUXBREW=false
WORKSPACE_INSTALL_MC=false
WORKSPACE_INSTALL_SYMFONY=false
WORKSPACE_INSTALL_PYTHON=false
WORKSPACE_INSTALL_IMAGE_OPTIMIZERS=false
WORKSPACE_INSTALL_IMAGEMAGICK=false
WORKSPACE_INSTALL_TERRAFORM=false
WORKSPACE_INSTALL_DUSK_DEPS=false
WORKSPACE_INSTALL_PG_CLIENT=false
WORKSPACE_INSTALL_SWOOLE=false
WORKSPACE_PUID=1000
WORKSPACE_PGID=1000
WORKSPACE_CHROME_DRIVER_VERSION=2.32
WORKSPACE_TIMEZONE=UTC
WORKSPACE_SSH_PORT=2222

### PHP_FPM ###############################################

PHP_FPM_INSTALL_ZIP_ARCHIVE=true
PHP_FPM_INSTALL_BCMATH=true
PHP_FPM_INSTALL_MYSQLI=true
PHP_FPM_INSTALL_TOKENIZER=true
PHP_FPM_INSTALL_INTL=true
PHP_FPM_INSTALL_IMAGEMAGICK=false
PHP_FPM_INSTALL_OPCACHE=true
PHP_FPM_INSTALL_IMAGE_OPTIMIZERS=true
PHP_FPM_INSTALL_PHPREDIS=true
PHP_FPM_INSTALL_MEMCACHED=false
PHP_FPM_INSTALL_XDEBUG='$XDEBUG_ENABLED'
PHP_FPM_INSTALL_IMAP=false
PHP_FPM_INSTALL_MONGO=false
PHP_FPM_INSTALL_AMQP=false
PHP_FPM_INSTALL_SOAP=false
PHP_FPM_INSTALL_GMP=false
PHP_FPM_INSTALL_EXIF=false
PHP_FPM_INSTALL_PGSQL=false
PHP_FPM_INSTALL_POSTGRES=false
PHP_FPM_INSTALL_GHOSTSCRIPT=false
PHP_FPM_INSTALL_LDAP=false
PHP_FPM_INSTALL_SWOOLE=false
PHP_FPM_INSTALL_PG_CLIENT=false

### PHP_WORKER ############################################

PHP_WORKER_INSTALL_PGSQL=false

### NGINX #################################################

NGINX_HOST_HTTP_PORT='$NGINX_HOST_HTTP_PORT'
NGINX_HOST_HTTPS_PORT='$NGINX_HOST_HTTPS_PORT'
NGINX_HOST_LOG_PATH=./logs/nginx/
NGINX_SITES_PATH=./nginx/sites/
NGINX_PHP_UPSTREAM_CONTAINER=php-fpm
NGINX_PHP_UPSTREAM_PORT=9000

### MYSQL #################################################

MYSQL_VERSION=5.7
MYSQL_DATABASE='$DB_DATABASE'
MYSQL_USER='$DB_USERNAME'
MYSQL_PASSWORD='$DB_PASSWORD'
MYSQL_PORT='$DB_PORT'
MYSQL_ROOT_PASSWORD=root
MYSQL_ENTRYPOINT_INITDB=./mysql/docker-entrypoint-initdb.d

### REDIS #################################################

REDIS_PORT=6379

### Percona ###############################################

PERCONA_DATABASE=homestead
PERCONA_USER=homestead
PERCONA_PASSWORD=secret
PERCONA_PORT=3306
PERCONA_ROOT_PASSWORD=root
PERCONA_ENTRYPOINT_INITDB=./percona/docker-entrypoint-initdb.d


### MARIADB ###############################################

MARIADB_DATABASE=default
MARIADB_USER=default
MARIADB_PASSWORD=secret
MARIADB_PORT=3306
MARIADB_ROOT_PASSWORD=root
MARIADB_ENTRYPOINT_INITDB=./mariadb/docker-entrypoint-initdb.d

### POSTGRES ##############################################

POSTGRES_DB=default
POSTGRES_USER=default
POSTGRES_PASSWORD=secret
POSTGRES_PORT=5432

### RABBITMQ ##############################################

RABBITMQ_NODE_HOST_PORT=5672
RABBITMQ_MANAGEMENT_HTTP_HOST_PORT=15672
RABBITMQ_MANAGEMENT_HTTPS_HOST_PORT=15671
RABBITMQ_DEFAULT_USER=guest
RABBITMQ_DEFAULT_PASS=guest

### ELASTICSEARCH #########################################

ELASTICSEARCH_HOST_HTTP_PORT=9200
ELASTICSEARCH_HOST_TRANSPORT_PORT=9300

### KIBANA ################################################

KIBANA_HTTP_PORT=5601

### MEMCACHED #############################################

MEMCACHED_HOST_PORT=11211

### BEANSTALKD CONSOLE ####################################

BEANSTALKD_CONSOLE_BUILD_PATH=./beanstalkd-console
BEANSTALKD_CONSOLE_CONTAINER_NAME=beanstalkd-console
BEANSTALKD_CONSOLE_HOST_PORT=2080

### BEANSTALKD ############################################

BEANSTALKD_HOST_PORT=11300

### SELENIUM ##############################################

SELENIUM_PORT=4444

### PHP MY ADMIN ##########################################

# Accepted values: mariadb - mysql

PMA_DB_ENGINE=mysql

# Credentials/Port:

PMA_USER=default
PMA_PASSWORD=secret
PMA_ROOT_PASSWORD=secret
PMA_PORT=8080


### VARNISH ###############################################

VARNISH_CONFIG=/etc/varnish/default.vcl
VARNISH_PORT=8080
VARNISH_BACKEND_PORT=8888
VARNISHD_PARAMS=-p default_ttl=3600 -p default_grace=3600

### Varnish ###############################################

# Proxy 1
VARNISH_PROXY1_CACHE_SIZE=128m
VARNISH_PROXY1_BACKEND_HOST=workspace
VARNISH_PROXY1_SERVER=SERVER1

# Proxy 2
VARNISH_PROXY2_CACHE_SIZE=128m
VARNISH_PROXY2_BACKEND_HOST=workspace
VARNISH_PROXY2_SERVER=SERVER2

### GRAFANA ###############################################

GRAFANA_PORT=3000

### MONGODB ###############################################

MONGODB_PORT=27017

### LARAVEL ECHO SERVER ###################################

LARAVEL_ECHO_SERVER_PORT=6001
' >docker/.env
