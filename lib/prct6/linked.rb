Node = Struct.new(:value, :next)

class Linked
    
    attr_accessor :head
    
    def initialize
        @head = @tail = nil
        @contador=0
    end

    def add(value)
        
        node = Node.new(value)
    
        @head = node if @head.nil?
        @tail.next = node unless @tail.nil?
    
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
            ob_diet=Dieta.new(@nomb,@porc)
            ob_raci=Raciones.new(@comida,@prop_aprox,@prop_exact,@kcal,@por)
                    
            aux2+="\n#{ob_diet.m_nombre()}\n"
            aux2+="#{ob_raci.comidayprop()}\n"
            aux2+="#{ob_raci.vct()}\n"
             
            
            @aux=@aux.next
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
    
end