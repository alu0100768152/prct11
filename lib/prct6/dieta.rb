
class Dieta
  
    attr_accessor :nombre, :porcent, :comida, :prop_aprox, :prop_exact, :kcal, :por
    
    def initialize(nombre,porc,comida,prop_aprox,prop_exact,kcal,por)
        @nombre = nombre
        @porcent = porc
        @comida = comida
        @prop_aprox = prop_aprox
        @prop_exact = prop_exact
        @kcal = kcal
        @por = por
    end
    
    def m_nombre()
       "#{@nombre} (#{@porcent}%)\n"
    end
    
    def comidayprop()
    	aux=""
    	tam=@comida&.length || 0
    	i=0
    	for i in (0..tam-1)
    		aux<<"- #{@comida[i]}#{@prop_aprox[i]}#{@prop_exact[i]}"
    		
    		i+=1
    		
    		aux+="\n"
    	end
    	"#{aux}"
    end

    def vct()
        aux = "V.C.T. |%    "
        aux << "#{@kcal} kcal |"
        tam = @por&.length || 0
        i=0
        for i in (0..tam-1)
            aux<<" #{@por[i]}% "
    		i+=1
    		if i<tam
    		    aux<<"-"
    		end
        end
    	"#{aux}\n"
    end
end


#############################################
class Alimentos < Dieta
    
    attr_reader :tipo
    def initialize(nombre,porc,comida,prop_aprox,prop_exact,kcal,por,tipo)
        super(nombre,porc,comida,prop_aprox,prop_exact,kcal,por)
        @tipo=tipo
    end 
    
    def to_s
        
        todo=""
        todo="Menú de #{@tipo}:\n"
        todo << m_nombre() 
        todo << "\n"
        todo << comidayprop()
        todo << "\n"
        todo << vct()
        
        "#{todo}"
        

    end    
        
end

class Edad < Dieta

    attr_reader :rango
    def initialize(nombre,porc,comida,prop_aprox,prop_exact,kcal,por,desde,hasta)
        super(nombre,porc,comida,prop_aprox,prop_exact,kcal,por)
        @desde=desde
        @hasta=hasta
    end

    def to_s
        todo=""
        todo="Menú de #{@desde} a #{@hasta} años:\n"
        todo << m_nombre() 
        todo << "\n"
        todo << comidayprop()
        todo << "\n"
        todo << vct()
        
        "#{todo}"
   
        
    end

end