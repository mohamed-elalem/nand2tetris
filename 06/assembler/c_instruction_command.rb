require './control'
require './jump'
require './destination'

class CInstructionCommand
    include Control
    include Jump
    include Destination
    
    def initialize(instruction)
        @instruction = instruction
        dest_phase = instruction.split "="
        @dest = @control = @jump = "null"
        if dest_phase.length == 2
            @dest = dest_phase[0]
            instruction = dest_phase[1]
        end
        control_phase = instruction.split ";"
        @control = control_phase[0]
        if control_phase.length == 2
            @jump = control_phase[1]
        end
    end

    def execute
        machine_instruction = "111" + CONTS[@control.to_sym] + DESTS[@dest.to_sym] + JUMPS[@jump.to_sym]
    end
end