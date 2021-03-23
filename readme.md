# Sample Docker for Magento2

Docker with containers: nginx, php, mysql, phpmyadmin, varnish

## Getting Started

This is sample Docker stack for clear Magento2 application

### Information

Use commands from docker/bin directory

    docker/bin/cli
    docker/bin/magento
    docker/bin/composer
    docker/bin/xdebug

### Requirements

Docker version 18.09.6, build 481bc77

docker-compose version 1.18.0, build 8dd22a9

Please ensure to Unix User is already in 'docker' group

### Installing
Run:    

    docker-compose up --build

Put address in your /etc/hosts file form .env

Regular instance put NGINX_CONTAINER_IPV4_ADDRESS eg.
    
    172.7.0.2 www.application.domain.test
    


## Running phpmyadmin

Put PHPMYADMIN_CONTAINER_IPV4_ADDRESS to your browser eg.
    
    172.7.0.5

## Create your Magento2 application via composer (use command from bin directory)

    .bin/docker create-project --repository=https://repo.magento.com/ magento/project-community-edition
    
Magento install directory is 'src'. See docker-compose.yaml section volumes

### Install Magento 
    docker/bin/magento setup:install --backend-frontname="admin" --session-save="files" --db-host="mysql" --db-name="application" --db-user="application" --db-password="application" --base-url="http://www.application.domain.test/" --base-url-secure="https://www.application.domain.test/" --admin-user="admin" --admin-password="test1234" --admin-email="admin@test.pl" --admin-firstname="admin" --admin-lastname="admin"
