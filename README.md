# Projeto: Sistema de Controle de Estoque (SQL)

Bem-vindo ao repositório do meu projeto prático de Banco de Dados! Desenvolvi este sistema para consolidar meus estudos iniciais em SQL utilizando o MySQL, focando em boas práticas de gerenciamento de dados.

O objetivo do projeto foi criar um fluxo completo de gerenciamento de produtos e categorias, aplicando conceitos de modelagem relacional e integridade de dados.

---

## O que eu aprendi e apliquei neste projeto:

### 1. Modelagem Relacional e Integridade (DDL)
* **Separação de Entidades:** Entendi a importância de não misturar tudo em uma tabela só. Criei tabelas separadas para `produtos` e `categorias` para evitar redundância de dados.
* **Chaves Primárias e Estrangeiras (`FOREIGN KEY`):** Apliquei o conceito de relacionamento (1 para Muitos), garantindo que um produto não possa ser cadastrado em uma categoria inexistente.
* **Restrições Inteligentes:** Utilizei `AUTO_INCREMENT` para o incremento automático de IDs, `UNIQUE` para impedir categorias duplicadas e `DEFAULT` para preenchimentos automáticos (como a data de cadastro).
* **Precisão Financeira:** Aprendi que não devemos usar `FLOAT` ou `DOUBLE` para armazenar dinheiro devido a erros de arredondamento binário. Por isso, apliquei o tipo `DECIMAL(10,2)` na coluna de preços, garantindo precisão exata nos centavos.

### 2. Manipulação de Dados e Relatórios (DML)
* **CRUD Completo:** Pratiquei a inserção de dados (`INSERT INTO`), consultas personalizadas (`SELECT`), atualizações seguras (`UPDATE`) e remoções de registros (`DELETE`).
* **Atenção ao `WHERE`:** Compreendi o perigo de rodar um `UPDATE` ou `DELETE` sem especificar o `WHERE`, fixando a boa prática de sempre usar o ID do registro para alterações seguras.
* **Resolução de Ambiguidade com `INNER JOIN`:** Aprendi a cruzar dados de duas tabelas diferentes. Descobri como usar apelidos (`p.nome` e `c.nome`) para explicar ao MySQL exatamente de qual tabela quero extrair a informação, resolvendo problemas de colunas com nomes iguais.

---

## Como executar o projeto:

1. Copie o código do arquivo `script_banco.sql` deste repositório.
2. Abra o seu ambiente MySQL (Terminal ou MySQL Workbench).
3. Cole e execute o script linha por linha para ver o banco sendo criado, populado e consultado em tempo real.
