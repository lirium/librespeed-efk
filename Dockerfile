FROM unit:php

COPY ./unit-config.json /docker-entrypoint.d/unit-config.json
COPY ./docker/entrypoint.sh /docker-entrypoint.d/entrypoint.sh
COPY ./docker/servers.json /servers.json
VOLUME ./database/ /database/
COPY ui.php index.html speedtest.js speedtest_worker.js favicon.ico /speedtest/
COPY ./results/ /speedtest/results/
COPY ./backend/ /speedtest/backend/
RUN mkdir /var/www/html/results && touch /var/www/html/results/telemetry.php && touch /var/www/html/index.php
RUN mkdir /database
RUN chmod +x /docker-entrypoint.d/entrypoint.sh

EXPOSE 80
