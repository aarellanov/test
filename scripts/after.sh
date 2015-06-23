#!/bin/bash
chmod 777 -R /var/www/html/application/cache/
service apache2 restart > /var/log/restartapache.out 2>&1

