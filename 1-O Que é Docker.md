
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
