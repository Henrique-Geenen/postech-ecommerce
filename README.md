# Postech E-commerce

Postech E-commerce é uma aplicação de e-commerce baseada em microsserviços. O projeto utiliza Spring Boot para os serviços de backend e PostgreSQL como banco de dados. Os serviços se comunicam entre si usando RabbitMQ.

## Estrutura do Projeto

O projeto é composto pelos seguintes microsserviços:

- **ms-cliente**: Gerencia operações relacionadas a clientes.
- **ms-logistica**: Lida com operações de logística e entrega.
- **ms-pedido**: Gerencia pedidos e seu processamento.
- **ms-produto**: Gerencia operações relacionadas a produtos.
- **ms-gateway**: Atua como um gateway de API para encaminhar solicitações para os microsserviços apropriados.

## Tecnologias Utilizadas

- **Java**
- **Spring Boot**
- **PostgreSQL**
- **RabbitMQ**
- **Docker**
- **Docker Compose**

## Pré-requisitos

- Docker
- Docker Compose
- .env (arquivo de variáveis de ambiente, deve ser importado para a raiz do projeto)

## Início Rápido

### Clonar o Repositório

```sh
git clone https://github.com/Henrique-Geenen/postech-ecommerce.git
cd postech-ecommerce
```

### Construir e Executar a Aplicação

Use o Docker Compose para construir e executar a aplicação:

```sh
docker-compose up --build
```

Ou use o Makefile:

```sh
make up
```

Estes comandos iniciarão todos os microsserviços junto com PostgreSQL e RabbitMQ.

### Acessar os Serviços

- **API Gateway**: [http://localhost:8080](http://localhost:8080)  
- **Serviço de Cliente**: [http://localhost:8081](http://localhost:8081)  
- **Serviço de Logística**: [http://localhost:8082](http://localhost:8082)  
- **Serviço de Pedido**: [http://localhost:8083](http://localhost:8083)  
- **Serviço de Produto**: [http://localhost:8084](http://localhost:8084)  

### Swagger UI dos Serviços

- **Serviço de Cliente**: [http://localhost:8081/swagger-ui.html](http://localhost:8081/swagger-ui.html)
- **Serviço de Logística**: [http://localhost:8082/swagger-ui.html](http://localhost:8082/swagger-ui.html)
- **Serviço de Pedido**: [http://localhost:8083/swagger-ui.html](http://localhost:8083/swagger-ui.html)
- **Serviço de Produto**: [http://localhost:8084/swagger-ui.html](http://localhost:8084/swagger-ui.html)

### Bancos de Dados

- **PostgreSQL Cliente**: [localhost:5432](localhost:5432)
- **PostgreSQL Logística**: [localhost:5433](localhost:5433)
- **PostgreSQL Pedido**: [localhost:5434](localhost:5434)
- **PostgreSQL Produto**: [localhost:5435](localhost:5435)

### Inicialização dos Bancos de Dados

Os bancos de dados PostgreSQL são inicializados com um script **init.sql**, localizados em diretórios com nomenclatura seguindo o exemplo: 'postgres-serviço/scripts/init'. Estes scripts são executados automaticamente quando o contêiner do PostgreSQL do resectivo microserviço é iniciado.

### Verificações de Saúde (Health Checks)

O arquivo **docker-compose.yml** inclui verificações de saúde para o serviço PostgreSQL, garantindo que ele esteja pronto antes que os serviços dependentes sejam iniciados.

### Opções do Makefile

O projeto inclui um **Makefile** com as seguintes opções:

- **make build**: Constrói as imagens Docker para todos os microsserviços.
- **make up**: Inicia todos os serviços usando Docker Compose.
- **make down**: Para todos os serviços e remove os contêineres.
