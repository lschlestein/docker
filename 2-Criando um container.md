## **2-Criando um container Docker**

### **2-Após instalar o docker, e certificar-se que o mesmo está rodando:**

Abra o prompt de comando e digite:
```cmd
docker -v
```
Deverá aparecer a versão do docker instalada em seu computador:

Após isso iremos criar um container do MySQL, com as seguintes configurações:

- A porta 3306 do container será redirecionada para a porta 3306 de nosso computador;
- Uma database dockerdb, na criação do container;
- Senha usuário root=root
- Um usuário: admin e senha: root
- mysql (indica qual imagem queremos instanciar)

```cmd
docker run -d --name mysqlContainer -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=dockerDatabase -e MYSQL_USER=admin -e MYSQL_PASSWORD=root mysql
```

Para verificar se o container foi criado e está rodando:
```cmd
docker ps
```
```cmd
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                               NAMES
24c0f0e57b3a   b2c0c7161966   "docker-entrypoint.s…"   38 minutes ago   Up 38 minutes   0.0.0.0:3306->3306/tcp, 33060/tcp   practical_torvalds
```


