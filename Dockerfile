FROM php:7.3-cli

LABEL version="1.0"
LABEL repository="https://github.com/StephaneBour/actions-php-cpd"
LABEL homepage="https://github.com/StephaneBour/actions-php-cpd"
LABEL maintainer="Stéphane Bour <stephane.bour@gmail.com>"

RUN curl -L https://phar.phpunit.de/phpcpd.phar -o /phpcpd

COPY "entrypoint.sh" "/entrypoint.sh"
COPY "memory_limit.ini" "/usr/local/etc/php/conf.d/memory_limit.ini"

RUN chmod +x /entrypoint.sh && chmod a+x /phpcpd
ENTRYPOINT ["/entrypoint.sh"]
