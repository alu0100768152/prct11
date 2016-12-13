
class MenuDSL
    
    attr_accessor :nombre, :titulo, :ingesta, :platos
    
    def initialize(nombre, &block)
        self.nombre = nombre
        self.titulo = ""
        self.ingesta = []        
        self.platos = []
        
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
    
    def ingest(options = {})
        ing = []
     
        if (options[:min] && options[:max])
            ing << options[:min]
            ing << options[:max] 
        else
            ing << options[:max]
        end
        
        ingesta << ing
        
    end

    def plato(options = {})
        dish = []
        dish << "#{options[:descripcion]}"
        dish << "#{options[:porcion]}"
        dish << "#{options[:gramos]}"
        
        platos << dish
    end
    
end 