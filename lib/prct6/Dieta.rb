class Dieta
  
    attr_reader :nombre
    def initialize(nombre,porc)
        @nombre = nombre
        @porcent = porc
    end
    
    def m_nombre()
       "#{@nombre} (#{@porcent}%)"
    end
    
    def m_raciones(comida,prop_aprox,prop_exact)
        @food = Raciones.new(comida,prop_aprox,prop_exact)
        @food.comidayprop()
        @food.vct()
    end
end

class Raciones
    def initialize(comida,prop_aprox,prop_exact)
        @comida = comida
        @prop_aprox = prop_aprox
        @prop_exact = prop_exact
    end
    
    def comidayprop()
		aux=""
		size=@comida.length
		for i in (0..size-1)
			aux<<"- #{@comida[i]}#{@prop_aprox[i]}#{@prop_exact[i]}"
			
			i+=1
			
			aux+="\n"
		end
		"#{aux}"
	end
end


