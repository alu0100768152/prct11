
class MenuDSL
    
    attr_accessor :nombre, :titulo
    
    def initialize(nombre, &block)
        self.nombre = nombre
        self.titulo = ""
        
        
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval &block
            end
        end
    end
    
    def title(name)
       aux = name
       titulo << aux
    end
    
end 