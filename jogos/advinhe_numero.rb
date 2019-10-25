class AdvinheNumero

    attr_accessor :number
    attr_accessor :value

    def initialize
        @number = Random.rand(1...10)
        @value = nil
    end

    def verifica

        if @number == @value
            return true
        else
            return false
        end

    end
end

obj = AdvinheNumero.new

puts "Informe um numero"
obj.value = gets.chomp.to_i

if !obj.verifica

    while true

        puts "Não acertou, informe novamente"
        obj.value = gets.chomp.to_i

        if obj.verifica
            puts "Acertou"
            break
        else
            puts "Errou"
        end

        
    end

else

    puts "Acertou"

end