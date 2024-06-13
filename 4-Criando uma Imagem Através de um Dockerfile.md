## **4-Criando nossa prórpia imagem do MySQL**

Para que possamos criar nossa imagem, precisaremos basicamente de dois arquivos.
O primeiro é o Dockerfile.
Nesse arquivo estão contidas informações que são importantes para o Docker criar nossa imagem corretamente.
Voce pode pegar esses arquivos [aqui](https://github.com/lschlestein/docker/tree/main/MySql-Image)

`filename: Dockerfile`
```Dockerfile
FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=root
COPY ./SQL_Initiaze.sql /docker-entrypoint-initdb.d/
```
No arquivo acima estamos, obtendo a imagem mais recente do Mysql. Em seguinda definimos as váriaves de ambiente de nossa imagem. Por último é feita a cópia do arquivo de nosso diretório para o diretório /docker-entrypoint-initdb.d/ de nossa imagem.
O segundo arquivo, é onde ficaram os scripts SQL, para criação de nossa database, tabelas, e valores padrão conforme necessário para nossa aplicação.

`filename: SQL_initialize.sql`
```sql
create database pessoa;
use pessoa;

CREATE TABLE pessoas(
    PessoaID int AUTO_INCREMENT,
    PrimeiroNome varchar(100) not null ,
    UltimoNome varchar(100) not null,
    primary key (PessoaID)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

insert into pessoas(primeironome, ultimonome) values
('Lucas', 'Alberto'), ('João', 'Batista');
```

Vá até o Hub do Docker https://hub.docker.com/ e crie um novo repositório.
Caso não tenha uma conta no Docker, crie-a;

Via terminal, dentro do diretório em que os arquivos foram criados, e digite:
Observe o ponto ao final da linha de comando
```cmd
C:\mysql> docker build -t seu_nome_de_usuario/mysql_db .
```
Para verificar se a imagem foi criada:
```cmd
C:\mysql>docker images --all
```
```cmd
REPOSITORY             TAG       IMAGE ID       CREATED          SIZE
lschlestein/mysql_db   latest    790132c6c2cf   31 seconds ago   623MB
mysql                  latest    8251f0669c6e   6 weeks ago      623MB
ubuntu                 latest    bf3dc08bfed0   6 weeks ago      76.2MB
```

É importante fazer a build de sua imagem, observando a sintaxe: `user/nome_imagem`, senão será necessário adicionar uma tag ao seu repositório local;

Feita a build de nossa imagem, é possível agora criar uma instância dela:

```cmd
docker run -d -p 3306:3306 seu_nome_de_usuario/mysql_db
```

Verifique se você está logado no Docker Hub, assim é possível fazer o `push` dessa imagem para nosso repositório no Hub agora:

```cmd
docker push nome_de_seu_usuario/imagem
```

Talvez seja necessário criar um token em: Account Settings > Security > New Access Token.
Para logar via prompt
```cmd
docker login -u seu_usuario_aqui
```
O prompt solicitará o token que você criou

Como dito anteriormente, é importante que o repositório do Hub e sua imagem tenha o mesmo nome.
