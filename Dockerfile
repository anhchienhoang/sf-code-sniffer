FROM php:7.2-cli

RUN pear install PHP_CodeSniffer

ADD ./vendor/escapestudios/symfony2-coding-standard/Symfony /usr/local/lib/php/PHP/CodeSniffer/src/Standards/Symfony

RUN /usr/local/bin/phpcs --config-set show_progress 1 && \
    /usr/local/bin/phpcs --config-set colors 1 && \
    /usr/local/bin/phpcs --config-set report_width 140 && \
    /usr/local/bin/phpcs --config-set encoding utf-8 && \
    /usr/local/bin/phpcs --config-set severity 1 && \
    /usr/local/bin/phpcs --config-set default_standard Symfony

ENTRYPOINT ["/usr/local/bin/phpcs"]
