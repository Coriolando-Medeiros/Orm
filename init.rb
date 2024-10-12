require_relative './models/produto'
require_relative './models/fornecedor'
require 'terminal-table'

def produto
    produtos = Produto.todos

    table = Terminal::Table.new do |t|
        t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Estoque', 'Fornecedor ID']

        produtos.each do |produto|
            t << [
                produto.id,
                produto.nome,
                produto.descricao,
                "%.2f" % produto.preco,
                produto.estoque,
                produto.fornecedor_id
            ]
        end
    end

    puts table
end

def fornecedor
    fornecedores = Fornecedor.todos

    table = Terminal::Table.new do |t|
        t.headings = ['ID', 'Nome', 'Cnpj']

        fornecedores.each do |fornecedor|
            t << [
                fornecedor.id,
                fornecedor.nome,
                fornecedor.cnpj
            ]
        end
    end

    puts table
end


def menu
    loop do
        puts "1 - Produtos"
        puts "2 - Fornecedores"
        puts "0 - Sair"
        print "Opção: "
        opcao = gets.chomp.to_i

        if opcao == 1
            produto
        elsif opcao == 2
            fornecedor
        elsif opcao == 0
            puts "Saindo..."
            return
        else
            puts "Opção inválida, tente novamente!"
        end
    end
end

menu