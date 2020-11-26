# desafio-backend## Documentação

A documentação tem como objetivo informar de forma breve a arquitetura, bem como as ferramentas que utilizei para implementação do QConcursos (backend).

### 1. Representação de Arquitetura

O padrão utilizado para o serviço (web api) será o MVC. Este padrão é constituído por três principais camadas, são elas: Model, View, Controller.
Ao contrário de uma aplicação end-to-end, ou seja, de ponta a ponta onde na mesma implementação integra-se a comunicação com o banco de dados, regra de negócio e tela (camada View),
numa API, a camada Controller será representada pelos endpoints (urls que invocam os métodos do serviço). A camada View exibirá a documentação para orientar o usuário como acessar os 
dados, utilizando os endereços.  Abaixo seguem os endpoints utilizados para a api:

* <endpoint - disciplinas com questões mais quentes>
* <endpoint - mais acessadas por período>

### 2. Ferramentas e tecnologias utilizadas

Afim de implementar e entregar a solução de forma objetiva e produtiva, foram utilizadas as seguintes ferramentas:

| Ferramenta | Descrição |
|:----:|:---------:|
| VS Code | Editor de Texto |
| Ruby on Rails | Framework para desenvolvimento web |
| Git | Ferramenta para versionamento |
| GitHub | Local de hospedagem do repositório do projeto |
| Insomnia | Ferramenta de teste para web api (substituto do Postman) |

### 3. Premissas

Segue aqui algumas orientações para a inicalização, bem como o bom funcionamento da api:

##### 3.1	Comandos iniciais para criação do banco e entidades

Com objetivo da criação do banco (no caso sqlite3), executar os comandos abaixo:

* _> rails db:migrate

##### 3.2	Criação do usuário para API (autenticação)

Dentro do terminal, realizar os seguintes comandos:

* _> rails c
* irb(main):> User.create(email: 'qualquer@email.com', password: 'qualquersenha')

##### 3.3	Execução da API

As duas ferramentas mais utilizadas para testes de APIs são Postman e Insomnia. Para a execução por essas ferramentas, basta colocar os
endpoints (vide item 1) implementados. Também é necessário colocar no header o token do usuário (gerado automaticamente no item 3.2). Segue abaixo uma imagem ilustrativa:

<URL:IMAGEM>