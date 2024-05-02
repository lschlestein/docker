## **Após instalar o docker, e certificar-se que o mesmo está rodando:**

Abra o prompt de comando e digite:
```
docker -v
```
```
docker run -d --name mysqlContainer -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=dockerDatabase -e MYSQL_USER=admin -e MYSQL_PASSWORD=root mysql
```
