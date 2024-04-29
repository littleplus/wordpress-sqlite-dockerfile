FROM wordpress:6.4.3-php8.3-apache
COPY db.php /usr/src/wordpress/wp-content/
RUN cp /usr/src/wordpress/wp-config-sample.php /usr/src/wordpress/wp-config.php
RUN echo "define( 'WP_AUTO_UPDATE_CORE', false);" >> /usr/src/wordpress/wp-config.php