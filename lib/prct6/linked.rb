Node = Struct.new(:value, :prev, :next)

class Linked
    
    include Enumerable
    
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
        aux2=""
        
        while @aux != nil do

            aux2 += "#{@aux.value.to_s}"
            
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
            if(@tail == nil)
                return false
            else
                aux = @tail.value
                @tail = @tail.prev
                return aux
            end
        
        
    end   
    
    def each
        nodo = head
        while(nodo != nil)
            yield nodo.value[1][3]
            nodo = nodo.next
        end
    end
    
    
end