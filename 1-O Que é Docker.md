
# **1-O que é Docker?**
A palavra "Docker" tem várias definições: um projeto da comunidade open source; as ferramentas resultantes desse projeto; a empresa Docker Inc., principal apoiadora do projeto; e as ferramentas compatíveis formalmente com a empresa. O fato da empresa e das tecnologias terem o mesmo nome pode causar alguma confusão.
Veja uma breve explicação:
- O software de TI "Docker" é uma tecnologia de conteinerização para criação e uso de containers Linux®.
- A comunidade open source do Docker trabalha gratuitamente para melhorar essas tecnologias para todos os usuários.
- A empresa Docker Inc. se baseia no trabalho realizado pela comunidade do Docker, tornando-o mais seguro, e compartilha os avanços com a comunidade em geral. Depois, ela oferece aos clientes empresariais o suporte necessário para as tecnologias, que foram aprimoradas e fortalecidas.

## Visão Geral do Docker
Docker é uma plataforma aberta para desenvolvimento, envio e execução de aplicativos. Ele permite separar seus aplicativos da infraestrutura, possibilitando uma entrega de software mais rápida. Com o Docker, você gerencia sua infraestrutura da mesma forma que seus aplicativos. Ao aproveitar as metodologias do Docker para envio, teste e implantação de código, é possível reduzir significativamente o tempo entre escrever o código e colocá-lo em produção.

### A Plataforma Docker
O Docker permite empacotar e executar um aplicativo em um ambiente isolado chamado contêiner. Esse isolamento e a segurança permitem a execução simultânea de múltiplos contêineres em um mesmo host. Contêineres são leves e incluem tudo o que é necessário para executar o aplicativo, eliminando a dependência do que está instalado no host. Além disso, é possível compartilhar contêineres, garantindo que todos recebam o mesmo ambiente de execução.

Docker fornece ferramentas e uma plataforma para gerenciar o ciclo de vida dos contêineres, que incluem:

- Desenvolvimento do aplicativo e seus componentes de suporte usando contêineres.
- Distribuição e teste do aplicativo como unidades contêinerizadas.
- Implantação do aplicativo no ambiente de produção, seja como um contêiner ou um serviço orquestrado, em data centers locais, provedores de nuvem ou ambientes híbridos.

### Para que posso usar o Docker?
Entrega rápida e consistente de aplicativos
Docker agiliza o ciclo de vida de desenvolvimento, permitindo que os desenvolvedores trabalhem em ambientes padronizados com contêineres locais. Isso é ideal para fluxos de trabalho de integração contínua e entrega contínua (CI/CD).

Por exemplo:

Desenvolvedores escrevem código localmente e compartilham com colegas usando contêineres Docker.
Utilizam o Docker para enviar aplicativos para ambientes de teste e executar testes automatizados e manuais.
Ao encontrar bugs, corrigem no ambiente de desenvolvimento e reimplantam no ambiente de teste para validação.
Após testes concluídos, enviar a correção ao cliente é tão simples quanto atualizar a imagem no ambiente de produção.
Implantação responsiva e escalonamento
A plataforma baseada em contêiner do Docker permite cargas de trabalho altamente portáteis. Contêineres Docker podem ser executados em laptops de desenvolvedores, em máquinas físicas ou virtuais em data centers, provedores de nuvem ou ambientes mistos. A portabilidade e leveza do Docker facilitam o gerenciamento dinâmico de cargas de trabalho, escalando ou reduzindo aplicativos e serviços conforme as necessidades do negócio, quase em tempo real.

### Executando mais cargas de trabalho no mesmo hardware
Docker é leve e rápido, oferecendo uma alternativa econômica às máquinas virtuais baseadas em hipervisor. Isso permite uma maior utilização do servidor, sendo ideal para ambientes de alta densidade e para implantações pequenas e médias, onde a eficiência de recursos é crucial.

### Arquitetura Docker
Docker utiliza uma arquitetura cliente-servidor. O cliente Docker se comunica com o daemon Docker, responsável por construir, executar e distribuir os contêineres. Cliente e daemon podem estar no mesmo sistema ou em sistemas diferentes, conectados via API REST, soquetes UNIX ou interface de rede. Outra ferramenta é o Docker Compose, que facilita o trabalho com aplicações compostas por múltiplos contêineres.
Com o Docker, é possível lidar com os containers como se fossem máquinas virtuais modulares e extremamente leves. Além disso, os containers oferecem maior flexibilidade para você criar, implantar, copiar e migrar um container de um ambiente para outro. Isso otimiza as apps na nuvem.

### O Daemon Docker
O daemon Docker (dockerd) escuta solicitações da API Docker e gerencia objetos Docker, como imagens, contêineres, redes e volumes. Ele também pode se comunicar com outros daemons para gerenciar serviços Docker.

### O Cliente Docker
O cliente Docker (docker) é a principal interface pela qual os usuários interagem com o Docker. Quando comandos como docker run são utilizados, o cliente envia essas instruções para o dockerd, que as executa. O cliente Docker pode se comunicar com múltiplos daemons.

### Área de Trabalho Docker
Docker Desktop é um aplicativo fácil de instalar para Mac, Windows ou Linux, que permite criar e compartilhar aplicativos e microsserviços em contêineres. Ele inclui o daemon Docker (dockerd), o cliente Docker (docker), Docker Compose, Docker Content Trust, Kubernetes e Credential Helper. Para mais informações, consulte Docker Desktop.

### Registros Docker
Um registro Docker armazena imagens Docker. O Docker Hub é um registro público padrão, mas você pode configurar e utilizar registros privados. Com os comandos docker pull ou docker run, o Docker obtém imagens do registro configurado. O comando docker push envia suas imagens para o registro configurado.

### Objetos Docker
No Docker, você cria e utiliza imagens, contêineres, redes, volumes, plugins e outros objetos. Abaixo, uma visão geral desses objetos:

### Imagens
Uma imagem é um modelo somente leitura com instruções para criar um contêiner Docker. Imagens geralmente são baseadas em outras imagens com personalizações adicionais. Por exemplo, uma imagem baseada no Ubuntu pode incluir o servidor web Apache e seu aplicativo com as configurações necessárias. Imagens podem ser criadas por você ou obtidas de terceiros em registros Docker. Para criar uma imagem, usa-se um Dockerfile que define as etapas necessárias. Cada instrução no Dockerfile adiciona uma camada à imagem, tornando-as leves e rápidas, pois apenas as camadas alteradas são reconstruídas.

### Contêineres
Um contêiner é uma instância executável de uma imagem. Você pode criar, iniciar, parar, mover ou excluir um contêiner usando a API Docker ou CLI. Contêineres podem ser conectados a redes, ter armazenamento anexado ou servir como base para novas imagens. Por padrão, contêineres são isolados uns dos outros e da máquina host, com opções configuráveis de isolamento. Um contêiner é definido pela sua imagem e pelas opções de configuração usadas na sua criação ou início. Alterações não armazenadas de forma persistente desaparecem quando o contêiner é removido.

## Exemplo de Comando docker run

O comando a seguir executa um contêiner Ubuntu, anexando-se interativamente à sua sessão de linha de comando local e executando /bin/bash:

``` bash
docker run -i -t ubuntu /bin/bash
```
Ao executar esse comando, os seguintes passos ocorrem (supondo que você esteja usando a configuração de registro padrão):

- Se a imagem ubuntu não estiver disponível localmente, o Docker a extrai do registro configurado.
- O Docker cria um novo contêiner.
- Um sistema de arquivos de leitura e gravação é alocado para o contêiner, permitindo modificações.
- Uma interface de rede é criada para o contêiner, atribuindo-lhe um endereço IP, permitindo conexões a redes externas.
- O Docker inicia o contêiner e executa /bin/bash. Como o contêiner está interativo e conectado ao terminal (devido aos sinalizadores -i e -t), você pode interagir com ele via teclado enquanto a saída é registrada no terminal.
- Ao encerrar o comando /bin/bash com exit, o contêiner para, mas não é removido. Ele pode ser reiniciado ou removido conforme necessário.

É possível acessar novamente o container criando recentemente da seguinte forma:

``` bash
docker exec -it container_id bash
```
  
## Vantagens
*Portabilidade:* Aplicativos em contêineres podem ser executados em qualquer ambiente que suporte Docker, seja no laptop de um desenvolvedor, em servidores locais ou na nuvem.

*Consistência:* Contêineres garantem que o aplicativo funcione da mesma forma em diferentes ambientes, eliminando problemas de dependência.

*Eficiência:* Contêineres são leves e utilizam menos recursos do que máquinas virtuais, permitindo maior densidade de aplicativos no mesmo hardware.

*Escalabilidade:* Facilita o escalonamento de aplicativos para atender às demandas de negócios de maneira rápida e eficiente.

*Ciclo de Desenvolvimento Rápido:* Melhora a integração e a entrega contínua (CI/CD), reduzindo o tempo entre desenvolvimento, teste e produção.

*Isolamento:* Contêineres fornecem um ambiente isolado, aumentando a segurança e minimizando conflitos entre aplicativos.

## Desvantagens
*Curva de Aprendizado:* Dominar Docker e suas ferramentas associadas pode ser desafiador, especialmente para aqueles que não estão familiarizados com contêineres e virtualização.

*Sobrecarga de Contêineres:* Executar muitos contêineres em um único host pode levar a problemas de desempenho se os recursos do sistema não forem gerenciados adequadamente.

*Persistência de Dados:* Gerenciar dados persistentes pode ser complicado, pois contêineres são efêmeros por natureza. É necessário configurar volumes e estratégias de backup adequadas.

*Segurança:* Embora os contêineres ofereçam isolamento, eles compartilham o kernel do host, o que pode representar riscos de segurança se não forem configurados e atualizados corretamente.

*Compatibilidade de Sistema Operacional:* Docker é mais eficiente em sistemas baseados em Linux. No Windows e Mac, ele utiliza uma VM para criar um ambiente Linux, o que pode introduzir uma camada adicional de complexidade e possíveis problemas de desempenho.

*Complexidade de Orquestração:* Em ambientes de produção com muitos contêineres, gerenciar e orquestrar esses contêineres pode se tornar complexo, exigindo ferramentas adicionais como Kubernetes.

*Sobreposição de Rede:* Configurar e gerenciar redes de contêineres pode ser complicado, especialmente em ambientes distribuídos ou em nuvem.
