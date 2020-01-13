git pull origin master \
&& docker-compose build \
&& docker-compose down --rmi 'local' \
&& docker-compose up -d