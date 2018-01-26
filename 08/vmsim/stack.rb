module Stack
    
    def self.get_instance
        @stack ||= []
    end

    def self.destroy
        @stack = []
    end

    def push(value)
        @stack << value
    end

    def pop
        @stack.pop
    end
end