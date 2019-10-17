
class Usuario

    attr_accessor :nome
    attr_accessor :data_nascimento
    attr_accessor :cpf
    attr_accessor :estado_civil

    def initialize
        @nome = nil
        @data_nascimento = nil
        @cpf = nil
        @estado_civil = nil
        @cidade = "São Paulo"
    end

end