## **Docker Compose**
Outra maneira de criar um container é através do docker compose.
Com o compose, podemos criar um container, com suas configurações pré-definidas em um arquivo .yml
Em seguida faremos a criação de um container dessa forma.

mysql.yml
```yml
version: '3.1'
services:
  db:
    image: mysql:latest
    command: --default-authentication-plugin=mysql_native_password
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: dockerDatabase
      MYSQL_USER: admin 
      MYSQL_PASSWORD: root
    ports:
    - 3306:3306
```

Assim conseguimos criar um container, com todas as configurações pré-definidas em um arquivo .yml

Para criar um container basta acessar o diretório onde o arquivo se encontra e inserir o seguinte comando:
```cmd
docker-compose -f mysql.yml up
```
`
