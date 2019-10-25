class WriteDB

    def initialize
        @path = "./data/db_funcionario.txt"
    end

    def writeFuncionario(obj)
         
        if File.exist?(@path)

            puts obj
            #file = File.open(@path, "w")

        else
            out_file = File.new(@path)

            out_file.close
            
        end

    end
end