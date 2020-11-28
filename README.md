# desafio-backend - Documentação

A documentação tem como objetivo informar de forma breve a arquitetura, as ferramentas utilizadas para implementação e orietações para a inicialização da API QConcursos (backend).

### 1. Representação de Arquitetura

O padrão utilizado para o serviço (web api) será o MVC. Este padrão é constituído por três principais camadas, são elas: Model, View, Controller. Ao contrário de uma aplicação end-to-end, ou seja, de ponta a ponta onde na mesma implementação integra-se a comunicação com o banco de dados, regra de negócio e tela (camada View), numa API a camada Controller será representada pelos endpoints (urls que invocam os métodos do serviço). A camada View exibirá a documentação para orientar o usuário como acessar os dados, utilizando os endereços.  Abaixo seguem os endpoints utilizados para a api:

* localhost:3000/api/v1/disciplinas_top_da_semana
* localhost:3000/api/v1/questoes_top_da_semana
* localhost:3000/api/v1/questoes_top_do_mes
* localhost:3000/api/v1/questoes_top_do_ano

### 2. Ferramentas e tecnologias utilizadas

Afim de implementar e entregar a solução de forma objetiva e produtiva, foram utilizadas as seguintes ferramentas:

| Ferramenta | Descrição |
|:----:|:---------:|
| VS Code | Editor de Texto |
| Ruby 2.3.3 | Linguagem de programação utilizada no Framework. Download: http://railsinstaller.org/pt-BR |
| Ruby on Rails v. 5.1.7 | Framework para desenvolvimento web. Download: http://railsinstaller.org/pt-BR |
| Git | Ferramenta para versionamento |
| GitHub | Local de hospedagem do repositório do projeto |
| Insomnia | Ferramenta de teste para web api (substituto do Postman) |

### 3. Premissas

Seguem aqui algumas orientações para a inicalização, bem como o bom funcionamento da api:

##### 3.1	Comandos iniciais para carregamento das dependências, criação do banco e entidades

Com objetivo da instalação das dependências do gemfile, executar o comando abaixo:

* _> bundle install

Com objetivo da criação do banco (no caso sqlite3), executar o comando abaixo:

* _> rails db:migrate

##### 3.2	Criação do usuário para API (autenticação). Popular dados do json, no SQLite3

Dentro do terminal, realizar os seguintes comandos (levará alguns minutos):

* _> rails db:seed

##### 3.3	Execução da API

As duas ferramentas mais utilizadas para testes de APIs são Postman e Insomnia. Para a execução por essas ferramentas, basta colocar os endpoints (vide item 1) implementados. Também é necessário colocar no header o token do usuário (gerado automaticamente no item 3.2). O header deverá ter esses dois parâmetros:

* label: X-User-Email        value: (email informado no item 3.2)
* label: X-User-Token        value: (token gerado no cadastro do usuário. No console do Rails, executar o comando: User.all em seguinda verificar o token)