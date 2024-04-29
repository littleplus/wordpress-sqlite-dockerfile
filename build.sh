#!/bin/bash
wget https://github.com/aaemnnosttv/wp-sqlite-db/raw/v1.3.1/src/db.php -O db.php
docker build . -t littleplus/wordpress:6.4-apache-sqlite
#docker push littleplus/wordpress:6.4-apache-sqlite