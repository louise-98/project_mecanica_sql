# Projeto Mecânica no MySQL Workbench

  Construindo um Projeto Lógico de Banco de Dados do Zero, usando o seguinte tema: Mecânica.

  O projeto lógico Mecânica tenta simular o modelo de dados básico de uma oficina mecânica. Ele organiza informações sobre clientes, veículos, mecânicos, serviços e ordens de serviço.

  As principais entidades são:

  - cliente: armazena dados de pessoas físicas (PF) e jurídicas (PJ), com verificação de CPF ou CNPJ;

  - veiculo: vincula cada veículo a um cliente;

  - mecanico: registra os profissionais e suas especialidades;

  - servico: lista os tipos de serviços oferecidos e seus preços;

  - ordem_servico: controla os atendimentos realizados, relacionando veículos e mecânicos, além do status e data de emissão.

    O esquema permite representar o gerenciamento, de forma estruturada, do fluxo de atendimento de uma oficina, desde o cadastro do cliente até a execução e acompanhamento dos serviços.

---

## DER (Diagrama Entidade-Relacionamento) 

![DER](https://github.com/louise-98/project_mecanica_sql/blob/main/Diagrama_Mecanica.png)

---

## Arquivos Elaborados

  - **[Script_Mecanica.sql](Script_Mecanica.sql)** | Estrutura do Banco de Dados
  - **[Dados_Mecanica.sql](Dados_Mecanica.sql)** | Base de Dados
  - **[Queries_Mecanica.sql](Queries_Mecanica.sql)** | Consultas (Queries) ao Banco de Dados
  - **[Diagrama_Mecanica.mwb](Diagrama_Mecanica.mwb)** | Diagrama Entidade-Relacionamento

---

## Tecnologias Envolvidas

  - Software utilizado: MySQL Workbench (IDE - Ambiente de Desenvolvimento Integrado)
  - Linguagem aplicada: SQL (Structured Query Language - Linguagem de Consulta Estruturada)

---
