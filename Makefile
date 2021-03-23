start:
	docker-compose up -d

stop:
	docker-compose stop

rm:
	rm -Rf src/generated
	rm -Rf src/pub/static/frontend
	rm -Rf src/pub/static/adminhtml
	rm -Rf src/pub/static/_requirejs
	rm -Rf src/var/cache
	rm -Rf src/var/composer_home
	rm -Rf src/var/di
	rm -Rf src/var/page_cache
	rm -Rf src/var/tmp
	rm -Rf src/var/view_preprocessed

upgrade:
	bin/magento setup:upgrade

di:
	bin/magento setup:di:compile

static:
	bin/magento setup:static-content:deploy -f en_US pl_PL

cache:
	bin/magento cache:flush

composer:
	bin/composer install

reindex:
	bin/magento indexer:reindex

refresh: rm composer upgrade di static cache
