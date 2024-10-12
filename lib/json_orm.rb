require 'json'
require 'byebug'

module JsonOrm
    def self.included(base)
        base.extend(EstruturaDados)
    end

    module EstruturaDados
        def arquivo_json(path_arquivo)
            @path_arquivo = path_arquivo
            define_atributos
        end

        private

        def define_atributos
            if File.exist?(@path_arquivo)
                arquivo_json = File.read(@path_arquivo)
                dados = JSON.parse(arquivo_json)
                #debugger
                atributos = dados.first.keys
                puts atributos.inspect

                atributos.each do |atributo|
                    define_method("#{atributo}=") do |value|
                        instance_variable_set("@#{atributo}",value)
                    end

                    define_method("#{atributo}") do
                        instance_variable_get("return @#{atributo}")
                    end
                end
            end
        end
    end
end
