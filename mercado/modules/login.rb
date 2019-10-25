require_relative "../data/write"

module Login

    class Utilitario

        def show
            
            puts "Informe sua matrícula"
            mat = gets.chomp

            puts "Informe sua senha"
            senha = gets.chomp

            #Valida

            if mat == "123" && senha == "123"
                return true
            else
                return false
            end
        end
    end

end