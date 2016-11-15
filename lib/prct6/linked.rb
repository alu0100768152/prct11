Node = Struct.new(:value, :prev, :next)

class Linked
    
    attr_accessor :head, :tail, :prev
    
    def initialize
        @head = @tail = nil
        @contador=0
    end

    def add(value)
        
        node = Node.new(value)
    
         @head = node if @head.nil?
        if(@tail!=nil)
            @tail.next = node 
            node.prev = @tail
            @contador=@contador+1
        end
        @tail = node
        #@contador=@contador+1
      
        
    end
    
    def to_s
        
        @aux=head
        #@tam=@aux.value.length
        aux2=""
        
        
        while @aux != nil do
            
            @nomb=@aux.value[0][0]
            @porc=@aux.value[0][1]
            
            @comida = @aux.value[1][0]
            @prop_aprox = @aux.value[1][1]
            @prop_exact = @aux.value[1][2]
            @kcal = @aux.value[1][3]
            @por = @aux.value[1][4]
           
            if (@aux.value[1][5]==nil)
                
                ob_diet=Dieta.new(@nomb,@porc,@comida,@prop_aprox,@prop_exact,@kcal,@por)
                #ob_raci=Raciones.new(@comida,@prop_aprox,@prop_exact,@kcal,@por)
                        
                aux2+="\n#{ob_diet.m_nombre()}\n"
                aux2+="#{ob_diet.comidayprop()}\n"
                aux2+="#{ob_diet.vct()}\n"
                 
                
                @aux=@aux.next
            
            else
                
                if (@aux.value[1][6]==nil)
                    @tipo = @aux.value[1][5]
                    ob_alimentos=Alimentos.new(@nomb,@porc,@comida,@prop_aprox,@prop_exact,@kcal,@por,@tipo)
                    aux2+="#{ob_alimentos.to_s()}\n"
                    
                     @aux=@aux.next
                else 
                    @desde = @aux.value[1][5]
                    @hasta = @aux.value[1][6]
                    ob_edad=Edad.new(@nomb,@porc,@comida,@prop_aprox,@prop_exact,@kcal,@por,@desde,@hasta)
                    aux2+="#{ob_edad.to_s()}\n"
                    
                     @aux=@aux.next
                end
            end    
        end
        
        "#{aux2}"
      
    end 
    
    def ex_1er_elemento()
        if @head.nil?
           return false
        end
        
        @aux3=head
        
        @head = @head.next
        @aux3.next=nil
    end 
    
    def empty?
        
        if @head.nil?
            return true
        else 
            return false
        end
    end
    
    def extract_tail()
        
            aux=""
            if(@tail == nil)
                return false
            else
                aux = @tail.value
                @tail = @tail.prev
                return aux
            end
        
        
    end    
    
end