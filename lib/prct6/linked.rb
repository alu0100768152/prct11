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
            ob_diet=Dieta.new(@nomb,@porc,@comida,@prop_aprox,@prop_exact,@kcal,@por)
           
            aux2+="\n#{ob_diet.m_nombre()}\n"
            aux2+="#{ob_diet.comidayprop()}\n"
            aux2+="#{ob_diet.vct()}\n"
             
            
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
    
    def extract_tail()
        aux=""
        if @tail.nil?
            return false
        end
        
        @aux4 = @tail.value
        @tail = @tail.prev
        #@aux4.prev = nil
        @tail.next = nil
        
        return aux
        
        
    end    
    
end