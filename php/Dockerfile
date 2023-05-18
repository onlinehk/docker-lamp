FROM --platform=linux/amd64 php:8.2-apache

# Install the PHP extensions we need
RUN set -ex; \
	apt-get update; \
	docker-php-ext-install -j$(nproc) pdo_mysql; \
	docker-php-ext-install mysqli; \
	docker-php-ext-enable mysqli; \
	rm -rf /var/lib/apt/lists/*

# 啟用 mod_rewrite 和 mod_headers 模組
RUN a2enmod rewrite headers

RUN echo "ServerTokens Prod\n" >> /etc/apache2/apache2.conf
RUN echo "ServerSignature Off\n" >> /etc/apache2/apache2.conf

COPY ./conf.d/custom.php.ini /usr/local/etc/php/conf.d/custom.ini
COPY ./www /var/www/html

EXPOSE 80