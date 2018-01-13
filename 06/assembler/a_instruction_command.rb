class AInstructionCommand

    def initialize(address)
        @address = address
    end

    def execute
        @address.to_i.to_s(2).rjust(16, '0')
    end
end