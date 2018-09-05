set -aeuo pipefail

ssh -vvv user@IP 'cd /var/www/<project-name>/ && git pull' \
&& git pull \
&& cd docker \
&& docker-compose -p <project-name> exec -T workspace composer config -g repo.packagist composer https://packagist.phpcomposer.com \
&& docker-compose -p <project-name> exec -T workspace composer install \
&& docker-compose -p <project-name> exec -T workspace php artisan migrate'



