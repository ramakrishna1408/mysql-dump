docker build -t dump .

docker run   -p 3306:3306    -e FILENAME='guna'    -e MYSQL_HOST='MYSQL_HOST'   -e MYSQL_PORT='MYSQL_PORT'   -e DB_USER='DB_USER'   -e DB_PASSWORD='DB_PASSWORD'   -e AZURE_STORAGE_ACCOUNT='AZURE_STORAGE_ACCOUNT'   -e AZURE_STORAGE_ACCESS_KEY='AZURE_STORAGE_ACCESS_KEY'    -e DB_NAME=test dump