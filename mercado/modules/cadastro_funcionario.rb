require_relative "../models/funcionario"
require_relative "../data/write"

module CadastroDeFuncionarios

    class GerenciamentoFunc

        def show
            while true
                puts "Gerenciamento de Funcionários"
                puts "Informe 1 para cadastrar"
                puts "Informe 2 para editar"
                puts "Informe 3 para excluir"
                puts "Informe 0 para voltar ao menu anterior"
                value = gets.chomp.to_i

                case value
                when 0
                    break
                
                when 1
                    obj = Funcionario.new
                    puts "Informe o nome"
                    obj.nome = gets.chomp
                    puts "Informe a data de nascimento"
                    obj.data_nascimento = gets.chomp
                    puts "Informe o cpf"
                    obj.cpf = gets.chomp
                    puts "Informe o cargo"
                    obj.cargo = gets.chomp
                    puts "Informe a matricula"
                    obj.matricula = gets.chomp
                    puts "Informe a senha"
                    obj.senha = gets.chomp

                    db = WriteDB.new
                    db.writeFuncionario(obj)

                end
            end

        end
    end

end