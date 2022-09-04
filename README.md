
# Sistema de Pedidos

Este é o código fonte de um sistema de pedidos para super mercados, visando utilizar as principais ferramentas do desenvolvimento em Ruby On Rails.
## Funcionalidades

- Controle de usuário administrador e entregador
- Cadastro, edição e exclusão de clientes
- Cadastro, edição e exclusão de produtos
- Cadastro, edição e exclusão de pedidos


## Stack utilizada

**Front-end:** HTML, CSS, JS, Bootstrap

**Back-end:** Ruby On Rails, SQLite3


## Rodando localmente

Clone o projeto

```bash
  git clone https://link-para-o-projeto
```

Entre no diretório do projeto

```bash
  cd trab2alejandro
```

Instale as dependências

```bash
  bundle install
```

Instale o banco de dados

```bash
  rake db:create
  rake db:migrate
```

Inicie o servidor

```bash
  rails s
```


## Usuários

Para a utilização do sistema você precisará logar como um usuário administrador. Rode o comando abaixo para criá-lo.

```bash
  rake db:seed
```

Com isso você irá gerar o seguinte usuário administrador:

- login: admin@sistema.com 
- senha: 123456

E também irá gerar o seguinte usuário entregador:

- login: entregador@sistema.com
- senha: 123456