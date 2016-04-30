apk update && apk add --no-cache git \
&& cd /tmp ; git clone --branch=php7 https://github.com/phpredis/phpredis.git \
&& cd phpredis  ; phpize \
&& ( ./configure && make -j2 && make install ) > /dev/null \
&& cd / ; rm -fr /tmp/phpredis \
&& echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini
