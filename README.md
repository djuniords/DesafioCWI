# DesafioCWI
Desafio de Automação de Testes

🧪 Desafio de Automação - Cardif
Este repositório contém a solução desenvolvida para o Desafio Técnico de Automação proposto pela CWI.
O objetivo é validar conhecimentos de automação de testes em Web (UI) e API, seguindo as instruções fornecidas.

📋 Tecnologias Utilizadas
- Java – Linguagem de programação
- Maven – Gerenciador de dependências e build
- Robot Framework – Framework de automação
- SeleniumLibrary – Automação de testes Web
- HttpRequestLibrary – Automação de testes de API
- Gherkin – Escrita dos cenários de teste

📂 Estrutura do Projeto

├── web-tests/            # Testes de automação de interface

│   ├── features/         # Cenários escritos em Gherkin

│   ├── resources/        # Keywords e elementos da UI

│   └── tests/            # Casos de teste Robot Framework

│

├── api-tests/            # Testes de automação de API

│   ├── resources/        # Variáveis, keywords e configurações

│   └── tests/            # Casos de teste Robot Framework

│

├── pom.xml               # Configuração do Maven

└── README.md             # Documentação do projeto

🌐 Desafio - Automação Web
Aplicação para teste: https://demoblaze.com/

Cenários implementados:

Cadastro de novo usuário

Realizar login com sucesso

Busca de produto

Inclusão de produto no carrinho

Alteração de itens no carrinho

Finalização de compra com sucesso

Bibliotecas utilizadas:

SeleniumLibrary

Robot Framework

Gherkin para descrição dos cenários

🔗 Desafio - Automação API
Base URL: https://reqres.in/

Cenários implementados:

Autenticação incorreta (sem envio de parâmetro)

Atualização de usuário (PUT – /api/users/{id})

Criação de novo usuário (POST – /api/users)

Busca de usuário único (GET – /api/users/{id})

Exclusão de usuário (DELETE – /api/users/{id})

Bibliotecas utilizadas:

HttpRequestLibrary

Robot Framework

▶️ Como Executar os Testes
Pré-requisitos
Java 11+ instalado

Maven instalado

Python 3+ instalado

Robot Framework instalado

Bibliotecas adicionais:

bash
Copiar
Editar
pip install robotframework-seleniumlibrary
pip install robotframework-httprequestlibrary
Executando Testes Web
bash
Copiar
Editar
mvn test -Pweb
Executando Testes API
bash
Copiar
Editar
mvn test -Papi


🏆 Autor
Darcy Junior Dantas da Silva - Engenheiro de Computação e Qualidade de Software
Desenvolvido para o Desafio Técnico de Automação – CWI
