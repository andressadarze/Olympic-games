# Projeto Olympic Games

### Tópicos
:small_blue_diamond: [Descrição do projeto](#descrição-do-projeto)

:small_blue_diamond: [Funcionalidades](#funcionalidades)

:small_blue_diamond: [Detalhes](#detalhes)

:small_blue_diamond: [Entidades](#entidades-typescript)

:small_blue_diamond: [Tabelas](#tabelas-mysql)

:small_blue_diamond: [Instruções](#instruções)

:small_blue_diamond: [Documentação](#documentação)

:small_blue_diamond: [Tecnologias Utilizadas](#tecnologias-utilizadas)

:small_blue_diamond: [Coverage](#coverage)

:small_blue_diamond: [Tarefas em aberto](#tarefas-em-aberto)


## Descrição do Projeto
Com a chegada dos jogos olímpicos, fui designada para construir uma API REST para o COB (Comitê Olímpico Brasileiro)
, que será responsável por marcar e dizer os vencedores das seguintes modalidades:
  - 100 metros rasos : menor tempo vence
  - Lançamento de dardo: maior distância vence
  
## Funcionalidades

1. Criar uma competição

2. Cadastrar resultados para uma competição

3. Finalizar uma competição

4. Retornar o ranking de uma competição, exibindo a posição final de cada atleta

## Detalhes
- A API Não deve aceitar cadastro de uma competição em uma modalidade cujo nome já foi registrado nesta mesma modalidade.
- A API não deve aceitar cadastros de resultados se a competição já estiver encerrada.
- A API pode retornar o ranking/resultado parcial, caso a disputa ainda não estiver encerrada.
- No caso da competição do lançamento de dardos, cada atleta terá 3 chances, e o resultado da competição deverá levar em conta o lançamento mais distante de cada atleta.
  
## Entidades (TypeScript)

### Competition
Toda competição é composta pelas seguintes características:
   - `id (string), gerado pela própria aplicação`
   - `name (string)`
   - `modality: enum "100 metros rasos" ou "Lançamento de dardos"`
   - `unit (string), metros ou segundos`
   - `status: enum "Em andamento" ou "Encerrada"`
    
### Result
Todo resultado é composto pelas seguintes características:
   - `id (string), gerado pela própria aplicação`
   - `competition (string)`
   - `modality: enum "100 metros rasos" ou "Lançamento de dardos"`
   - `athlete (string)`
   - `value (number)`
   
## Tabelas (MySQL)

### OG_Competitions

-   `id VARCHAR(255) e chave primária`
-   `name VARCHAR(255) e não-nulo`
-   `modality ENUM('100 metros rasos', 'Lançamento de dardos') e não-nulo`
-   `unit VARCHAR(255) e não-nulo`
-   `status ENUM('Em andamento', Encerrada') e não nulo`


### OG_Results_Rasos

-   `id VARCHAR(255) e chave primária`
-   `competition VARCHAR(255) e não-nulo`
-   `athlete VARCHAR(255) e não-nulo`
-   `value FLOAT e não nulo`

### OG_Results_Dardos

-   `id VARCHAR(255) e chave primária`
-   `competition VARCHAR(255) e não-nulo`
-   `athlete VARCHAR(255) e não-nulo`
-   `value FLOAT e não nulo`

## Instruções

### Instalando as dependências:
-   `npm install`:
    Instala todas as dependências listadas no `package.json`.

### Criando o arquivo .env:

Criar o arquivo `.env` e configurar com as informações de seu banco de dados.

```
PORT = 3003
DB_HOST = host
DB_USER = usuario
DB_PASS = senha
DB_NAME = nome-do-banco-de-dados
JWT_KEY = "minha-senha-segura"
JWT_EXPIRES_IN = "24h"
BCRYPT_COST = 12
```

### Executar o projeto:

-   `npm run dev:`
Estabelece a conexão com o banco de dados e reinicia automaticamente o servidor `localhost` toda a vez que o projeto for alterado e salvo.

### Criando e populando as tabelas

Acessar o arquivo `tables.sql` e executar os comandos de criação das tabelas `OG_Competitions`, `OG_Results_Rasos` e `OG_Results_Dardos`, respectivamente.

Popular as tabelas através das requisições do Postman ou do arquivo `requests.rest` da aplicação.

## Documentação
- [Postman](https://documenter.getpostman.com/view/21556158/2s8YYEMPaK)

## Tecnologias utilizadas
  -   NodeJS
  -   TypeScript
  -   MySQL
  -   Knex
  -   Express
  -   Cors
  -   Markdown
  -   UUID


## Coverage
- `npm run test`

![coverage](https://user-images.githubusercontent.com/104744597/213477504-83f6504a-69b4-474a-ad87-b36a112e428a.png)


## Tarefas em aberto
:memo: Alterar nome das tabelas no VSCode

:memo: Acrescentar o `run migrations` para criar e popular as tabelas automaticamente

:memo: Deploy do backend
  
## Autora
 [**Andressa Darzé**](https://github.com/andressadarze) - Desenvolvedora Web Full-Stack
 
 
 [![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/andressadarze)
