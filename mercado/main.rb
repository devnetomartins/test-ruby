require_relative "./models/funcionario"
require_relative "./modules/cadastro_funcionario"
require_relative "./modules/login"

@status_login = false

while true
    
    puts "Sistema de mercado\n"

    puts "Digite 1 para logar"

    puts "Digite 0 para sair do sistema"

    opc = gets.chomp.to_i

    case opc
    when 1
        @status_login = Login::Utilitario.new.show
    when 0
        break
    end

    if @status_login
        puts "Informe 1 para gerenciar funcionarios"
        puts "Informe 2 para"
        opc = gets.chomp.to_i

        case opc
        when 1
            CadastroDeFuncionarios::GerenciamentoFunc.new.show
        end
    end
    system("clear")
    
end