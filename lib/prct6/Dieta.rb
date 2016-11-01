class Dieta
  
    attr_reader :nombre
    def initialize(nombre,porc)
        @nombre = nombre
        @porcent = porc
    end
    
    def m_nombre()
       "#{@nombre} (#{@porcent}%)"
    end
end


