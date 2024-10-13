# Sistema de Gestão de Produtos e Fornecedores

Este é um sistema simples para gerenciamento de produtos e fornecedores. Ele permite a exibição de informações como nome, descrição, preço e estoque dos produtos, bem como os detalhes dos fornecedores. O sistema utiliza arquivos JSON para armazenar os dados de produtos e fornecedores, e exibe essas informações em um formato de tabela no terminal.

## Funcionalidades

### Produtos

- Listagem de todos os produtos, incluindo:
  - ID
  - Nome
  - Descrição
  - Preço
  - Quantidade em estoque
  - ID do fornecedor associado

### Fornecedores

- Listagem de todos os fornecedores, incluindo:
  - ID
  - Nome
  - CNPJ

### Funcionalidades em desenvolvimento:

- Adição de novos produtos
- Adição de novos fornecedores
- Apagar registros

## Instalação

1. Clone este repositório:

```bash
    git clone https://github.com/seu-usuario/seu-repositorio.git
```

2. Instale as dependências:

```bash
    bundle install
```

3. Certifique-se de que os arquivos JSON para produtos e fornecedores estão no diretório `json/`:
   - `json/produtos.json`
   - `json/fornecedores.json`

## Como Usar

Para rodar o sistema, execute o arquivo principal no terminal:

```bash
ruby seu_arquivo_principal.rb
```

Após iniciar, o menu principal será exibido com as seguintes opções:

- 1 - Produtos: Mostra a tabela com todos os produtos.
- 2 - Fornecedores: Mostra a tabela com todos os fornecedores.
- 3 - Apagar: Em implementação.
- 4 - Adicionar produto: Em implementação.
- 5 - Adicionar fornecedor: Em implementação.
- 0 - Sair: Encerra o sistema.

## Exemplo de Tabelas

## Produtos:

| ID  | Nome                  | Descrição                          | Preço | Estoque | Id Fornecedor |
| --- | --------------------- | ---------------------------------- | ----- | ------- | ------------- |
| 1   | Caneta Azul           | Caneta esferográfica de ponta fina | 1.50  | 100     | 1             |
| 2   | Caderno Universitário | Caderno de 200 folhas, capa dura   | 12.90 | 50      | 2             |

## Fornecedores:

| ID  | Nome                       | CNPJ               |
| --- | -------------------------- | ------------------ |
| 1   | Papelaria Silva            | 12.345.678/0001-90 |
| 2   | Distribuidora Escolar Ltda | 98.765.432/0001-12 |

## Dependências

- terminal-table: Para exibir as informações em tabelas no terminal.
- json: Para manipulação dos arquivos JSON.
- byebug: Ferramenta de depuração (opcional, usada para debug).

## Estrutura de Arquivos

- models/ : Contém as classes Produto e Fornecedor.
- json/ : Diretório contendo os arquivos produtos.json e fornecedores.json.
- lib/json_orm.rb: Implementação simples de um ORM em JSON para leitura dos dados.

##Contribuição

Pull requests são bem-vindos. Para grandes mudanças, abra uma issue primeiro para discutir o que você gostaria de alterar.

## Licença

Este projeto está licenciado sob a MIT License. Veja o arquivo LICENSE para mais detalhes.
