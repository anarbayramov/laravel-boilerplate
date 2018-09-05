source src/.env

#ADD USER TO docker group so you dont have to run sudo with docker
#sudo groupadd docker
#sudo gpasswd -a $USER docker
#sudo chown "$USER":"$USER" /home/"$USER"/.docker -R #TODO if folder does not exist it needs to be created
#sudo chmod g+rwx "/home/$USER/.docker" -R



#THINK IF THEY ARE REQUIRED

#find src/ -type d -exec chmod 755 {} ;
#find src/ -type d -exec chmod ug+s {} ;
#find src/ -type f -exec chmod 644 {} ;
#chmod -R 777 src/storage
#chmod -R 777 src/bootstrap/cache/

mkdir -p src/bootstrap/cache
mkdir -p src/storage
mkdir -p src/storage/framework
mkdir -p src/storage/framework/sessions
mkdir -p src/storage/framework/views
mkdir -p src/storage/framework/cache
mkdir -p src/certs
