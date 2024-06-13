## **3-Docker Compose**
Outra maneira de criar um container é através do docker compose.
Com o compose, podemos criar um container, com suas configurações pré-definidas em um arquivo .yml
Em seguida faremos a criação de um container dessa forma. Arquivo está [aqui](https://github.com/lschlestein/docker/blob/main/MySql-Image/mysql.yml).

`filename: mysql.yml`
```yml
services:
  db:
    image: mysql:latest
    restart: always
    environment:
      MYSQL_DATABASE: 'DOCKERDB'
      # Cria um usuário de nome admin
      MYSQL_USER: 'admin'
      # Define a senha para o usuário admin
      MYSQL_PASSWORD: 'root'
      # Define a senha do usuário root
      MYSQL_ROOT_PASSWORD: 'root'
    ports:
      # <Porta hospedeiro> : <Porta do container>
      - '3306:3306'
    expose:
      # Abre a porta 3306 no container
      - '3306'
      # Volume para armazenar os dados
    volumes:
      - mysql-db:/var/lib/mysql
# Nome do volume criado
volumes:
  mysql-db:
```

Assim conseguimos criar um container, com todas as configurações pré-definidas em um arquivo .yml

Para criar um container basta acessar o diretório onde o arquivo se encontra e inserir o seguinte comando:
```cmd
docker-compose -f mysql.yml up
```
`
