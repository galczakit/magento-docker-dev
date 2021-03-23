# Sample Docker for Magento2.4

## Getting Started

### Requirements

Docker
docker-compose
Please ensure to Unix User is already in 'docker' group

### Information

Use commands from docker/bin directory

    docker/bin/cli
    docker/bin/magento
    docker/bin/composer
    docker/bin/xdebug
This is sample Docker stack for clear Magento2 application

### Install clear magento:
```shell script
    bin/composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition .
```
Magento install directory is 'src'.

### Install Magento
```shell script
bin/magento setup:install --backend-frontname="admin" --session-save="files" \
--db-host="db" --db-name="magento" --db-user="magento" --db-password="magento" \
--base-url="http://magento.local/" \
--admin-user="admin" --admin-password="test1234" --admin-email="admin@no-response.org" --admin-firstname="admin" --admin-lastname="admin" \
--elasticsearch-host="elasticsearch"
```

### Xdebug
Config for xdebug could be found and change in /usr/local/etc/php/conf.d/xdebug.ini (php container)

    zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-xxxx/xdebug.so
    xdebug.remote_enable=on
    xdebug.remote_autostart=on
    xdebug.idekey="PHPSTORM"
    xdebug.remote_host=172.16.1.11

### May need
```shell script
bin/magento config:set web/secure/base_url 'http://magento.local/'
bin/magento module:disable Magento_TwoFactorAuth
```
