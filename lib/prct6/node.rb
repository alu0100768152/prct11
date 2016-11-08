class Node
    
    attr_accessor :value, :next
    def initialize(value)
        @value = value
        @next = nil
    end

    def next=(value)
        @next = value
    end
    
end