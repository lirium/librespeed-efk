# Используем базовый образ unit:php
FROM unit:php

# Устанавливаем рабочую директорию
#WORKDIR /speedtest

# Копируем необходимые файлы в контейнер
COPY ./unit-config.json /docker-entrypoint.d/unit-config.json
COPY ./docker/entrypoint.sh /docker-entrypoint.d/entrypoint.sh
COPY ./docker/servers.json /servers.json
VOLUME ./database/ /database/
COPY ui.php index.html speedtest.js speedtest_worker.js favicon.ico /speedtest/
COPY ./results/ /speedtest/results/
COPY ./backend/ /speedtest/backend/
#VOLUME ./ /speedtest/ 
RUN mkdir /var/www/html/result
#RUN chmod 777 /var/www/html/result
# Делаем скрипт entrypoint.sh исполняемым
RUN chmod +x /docker-entrypoint.d/entrypoint.sh

# Создаём volume для данных
#VOLUME /var/www/html/result
#VOLUME .:/speedtest
# Указываем скрипт как точку входа
#ENTRYPOINT ["/docker-entrypoint.d/entrypoint.sh"]

# Указываем порт, который будет использоваться
EXPOSE 80
