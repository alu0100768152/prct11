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
    
end