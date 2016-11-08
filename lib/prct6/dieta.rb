class Dieta
  
    attr_reader :nombre
    def initialize(nombre,porc)
        @nombre = nombre
        @porcent = porc
    end
    
    def m_nombre()
       "#{@nombre} (#{@porcent}%)\n"
    end
    
    def m_raciones(comida,prop_aprox,prop_exact,kcal,por)
        @food = Raciones.new(comida,prop_aprox,prop_exact,kcal,por)
        @food.comidayprop()
        @food.vct()
    end
    
   # def to_s()
    
    #end
end

class Raciones
    def initialize(comida,prop_aprox,prop_exact,kcal,por)
        @comida = comida
        @prop_aprox = prop_aprox
        @prop_exact = prop_exact
        @kcal = kcal
        @por = por 
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
	
	def vct()
        aux = "V.C.T. |%    "
        aux << "#{@kcal} kcal |"
        size = @por.length
        for i in (0..size-1)
            aux<<" #{@por[i]}% "
			i+=1
			if i<size
			    aux<<"-"
			end
        end
		"#{aux}\n"
	end
end


