require './debug_command'
require './constant_push_command'
require './general_pop_command'
require './executor_command'
require './increment_stack_command'
require './decrement_stack_command'
require './offset_command'

class FunctionCommand
    include DebugCommand

    def initialize(instruction)
        @instruction = instruction
    end

    def execute
        with_comments self.class do
            function_name = @instruction.split[1]
            instructions = %W[
                @#{function_name}_pass
                0;JMP
                (#{function_name})
            ]
            @instruction.split[2].to_i.times do |lcl|
                instructions.push(*ExecutorCommand.new(
                    ConstantPushCommand.new("push constant 0"),
                    IncrementStackCommand.new,
                    OffsetCommand.new(lcl),
                    DecrementStackCommand.new,
                    GeneralPopCommand.new("pop local #{lcl}")
                ).execute)
            end
            instructions
        end
    end
end