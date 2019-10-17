require_relative "conta"
require_relative "usuario"

@contas = []

def cadastro
    conta =  Conta.new
    usuario = Usuario.new
    puts @cidade
    puts "Informe a agencia"
    conta.agencia = gets
    puts "Informe a conta"
    conta.n_conta = gets
    puts "Informe o nome"
    usuario.nome = gets
    puts "Informe a data de nascimento"
    usuario.data_nascimento = gets
    puts "Informe o cpf"
    usuario.cpf = gets
    puts "Informe o estado civil"
    usuario.estado_civil = gets
    conta.usuario = usuario
    

    if @contas.length == 0
        @contas << conta
    else

        @contas.each do |content|
            puts content == conta
        end
    end
end

def alterar
end

def mostra_contas

    @contas.each do |content|
        puts content.agencia
    end

end

while true
    puts "Informe 0 para sair"
    puts "Informe 1 para cadastrar uma conta"
    puts "Informe 2 para alterar cadastro"
    puts "Informe 3 para mostrar contas"
    opc =  gets

    case opc.chomp.to_i
        when 0
            break
        when 1
            cadastro()
        when 2

        when 3
            mostra_contas()
        end
            
end