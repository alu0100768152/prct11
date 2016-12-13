
class MenuDSL
    
    attr_accessor :nombre, :titulo, :ingesta, :platos, :porcentajes
    
    def initialize(nombre, &block)
        self.nombre = nombre
        self.titulo = ""
        self.ingesta = []        
        self.platos = []
        self.porcentajes = []
        
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
    
    def porcent(options = {})
        por = []
        por << "#{options[:vct]}"
        por << "#{options[:proteinas]}"
        por << "#{options[:grasas]}"
        por << "#{options[:hidratos]}"
        
        porcentajes << por
        
    end 
    
    def to_s
        output = nombre
        output << "\n#{'=' * nombre.size}\n\n"
        output << "#{titulo} "
        ingesta.each do |ing|
            output << "#{ing}\n"
        end
        
        platos.each do |dish|
           output << "- #{dish[0]}, #{dish[1]}, #{dish[2]}g\n" 
        end
        
        porcentajes.each do |por| 
            output << "V.C.T. | %   #{por[0]} kcal | #{por[1]}% - #{por[2]}% - #{por[3]}%\n"
        end
    
        output
            
    end
    
end 