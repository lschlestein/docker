## **2-Criando um container Docker**

### **2-Após instalar o docker, e certificar-se que o mesmo está rodando:**

Abra o prompt de comando e digite:
```cmd
docker -v
C:\Users\Lucas>docker -v
```
```cmd
Docker version 26.1.1, build 4cf5afa
````

Deverá aparecer a versão do docker instalada em seu computador:

Após isso iremos criar um container do MySQL, com as seguintes configurações:

- A porta 3306 do container será redirecionada para a porta 3306 de nosso computador;
- Uma database DOCKERDB, na criação do container;
- Senha usuário root=root
- Um usuário: admin e senha: root
- mysql (indica qual imagem queremos instanciar)

```cmd
docker run -d --name mysqlContainer -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=dockerDatabase -e MYSQL_USER=admin -e MYSQL_PASSWORD=root mysql
```
```cmd
86cd4c7e0eaf47a2bffa7e652d3054817c9b8d55b4fdd89b7e80af9cfc084c41
```

Para verificar se o container foi criado e está rodando:
```cmd
docker ps
```
```cmd
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                               NAMES
86cd4c7e0eaf   mysql     "docker-entrypoint.s…"   2 minutes ago   Up 2 minutes   0.0.0.0:3306->3306/tcp, 33060/tcp   mysqlContainer
```

Para verificar se conseguimos manpular nossa database, iremos utlizar o IntelliJ, porém, é possível conectar de forma normal através de qualquer software ou aplicação, utlizando as portas e senhas configuradas na criação do container.
Buscar a aba databases a direita da janela principal do IntelliJ
![image](https://github.com/lschlestein/docker/assets/103784532/3c0a59cf-f05a-41d6-80ed-f3c78a15fa3f)

No incone +, adicione uma nova conexão com um banco MySQL, que foi o que acabamos de instanciar no Docker.
![image](https://github.com/lschlestein/docker/assets/103784532/aade848d-a0a7-44bf-b291-83d467792ace)

Insira os dados de porta, usuário, senha e database, anteriormente configurados em nosso container.
![image](https://github.com/lschlestein/docker/assets/103784532/80bbf635-31e8-4534-8cf3-de3a4108a0e9)

Teste a conexão antes de finalizar:
![image](https://github.com/lschlestein/docker/assets/103784532/f7a4e45e-0c1c-4fdb-9694-aad49ccb6146)

Agora é possível criar tabelas e fazer consultas via Query Console
![image](https://github.com/lschlestein/docker/assets/103784532/91be9fb7-1386-4d36-bb0b-a24e67e92ca2)

``` sql
create table Funcionario(
    FuncionarioID INT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    PRIMARY KEY(FuncionarioID)
);
```
Inserindo um registro para teste
``` sql
INSERT INTO Funcionario VALUES (1, 'Lucas Alberto', 'lucas@mail.com');
```
Verificando registros
```
SELECT * FROM Funcionario;
```
![image](https://github.com/lschlestein/docker/assets/103784532/9eab77b1-9ffc-43ca-bc23-32e38015fff0)

Para criar uma database Postgres, ficaria da seguinte forma:
- Nome do container postgresDB
- A porta 5432 do container será redirecionada para a porta 5432 de nosso computador;
- O parâmetro -v cria um volume para salvar os dados de nossas tabelas dentro do armazenamento de nosso container
- Senha=1234
- -d detached (Para não ficar com o terminal preso durante execução do container)
- postgres (indica qual imagem queremos instanciar)
```cmd
docker run --name postgresDB -p 5432:5432 -v /tmp/database:/var/lib/postgresql/data -e POSTGRES_PASSWORD=1234 -d postgres
```
No IntelliJ
![image](https://github.com/lschlestein/docker/assets/103784532/b290994d-70cc-4ea4-abb1-b05e9b252e16)]
Podemos criar novamente uma tabela agora nos Postgres
```sql
create table Funcionario(
                            FuncionarioID SERIAL,
                            Nome VARCHAR(100),
                            Email VARCHAR(100),
                            PRIMARY KEY(FuncionarioID)
);
```
Inserir alguns dados:
```sql
INSERT INTO Funcionario (FuncionarioID, Nome, Email) values (DEFAULT, 'Lucas ', 'lucas@mail.com');
```
Verificando registros
```
SELECT * FROM Funcionario;
```









