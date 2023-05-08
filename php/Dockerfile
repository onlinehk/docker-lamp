FROM php:8.2-apache

# Install the PHP extensions we need
RUN set -ex; \
	apt-get update; \
	docker-php-ext-install -j$(nproc) pdo_mysql; \
	docker-php-ext-install mysqli; \
	docker-php-ext-enable mysqli; \
	rm -rf /var/lib/apt/lists/*

# 啟用 mod_rewrite 和 mod_headers 模組
RUN a2enmod rewrite headers