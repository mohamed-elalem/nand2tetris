require './first_operand_command'
require './second_operand_command'
require './operation_command'
require './increment_stack_command'
require './decrement_stack_command'
require './executor_command'
require './offset_command'
require './constant_push_command'
require './pointer_push_command'
require './general_push_command'
require './general_pop_command'
require './pointer_pop_command'
require './label_command'
require './goto_command'
require './if_goto_command'
require './function_command'
require './return_command'
require './call_command'

class Parser

    class << self
       attr_accessor :func_def_stack
       
       def push_func(func_name)
          (@func_def_stack ||= []) << func_name
       end

       def pop_func
          @func_def_stack.pop unless @func_def_stack.empty?
       end
    end

    def parse(instruction)
        low_level_instruction = handle_operation(instruction) if %w(add sub neg eq gt lt and or not).include? instruction.split.first
        low_level_instruction = handle_memory(instruction) if %w(push pop).include? instruction.split.first
        low_level_instruction = handle_branching(instruction) if %W(label if-goto goto).include? instruction.split.first
        low_level_instruction = handle_function(instruction) if %W(function return call).include? instruction.split.first
        low_level_instruction
    end

    def handle_operation(instruction)
        low_level_instruction_commands = [ DecrementStackCommand.new, FirstOperandCommand.new ]
        low_level_instruction_commands << [ DecrementStackCommand.new, SecondOperandCommand.new ].flatten if %w(add sub eq gt lt and or).include? instruction.split.first
        low_level_instruction_commands << OperationCommand.new(instruction.split.first)
        low_level_instruction_commands << IncrementStackCommand.new
        ExecutorCommand.new(low_level_instruction_commands).execute
    end

    def handle_memory(instruction)
        instructions = handle_push_memory(instruction) if instruction.split.first == 'push'
        instructions = handle_pop_memory(instruction) if instruction.split.first == 'pop'
        instructions
    end

    def handle_push_memory(instruction)
        instructions = ExecutorCommand.new(
            OffsetCommand.new(instruction.split[2]),
            GeneralPushCommand.new(instruction),
            IncrementStackCommand.new
        ).execute if %w(local argument this that static temp).include? instruction.split[1]
        instructions = ExecutorCommand.new(
            PointerPushCommand.new(instruction),
            IncrementStackCommand.new
        ).execute if instruction.split[1] == 'pointer'
        instructions = ExecutorCommand.new(
            ConstantPushCommand.new(instruction),
            IncrementStackCommand.new
        ).execute if instruction.split[1] == 'constant'
        instructions
    end

    def handle_pop_memory(instruction)
        instructions = ExecutorCommand.new(
            OffsetCommand.new(instruction.split[2]),
            DecrementStackCommand.new,
            GeneralPopCommand.new(instruction)
        ).execute unless instruction.split[1] == 'pointer'
        instructions = ExecutorCommand.new(
            DecrementStackCommand.new,
            PointerPopCommand.new(instruction)
        ).execute if instruction.split[1] == 'pointer'
        instructions
    end

    def handle_branching(instruction)
        instructions = ExecutorCommand.new(
            LabelCommand.new(instruction)
        ).execute if instruction.split.first =~ /^(label)/i
        instructions = ExecutorCommand.new(
            GotoCommand.new(instruction)
        ).execute if instruction.split.first =~ /^(goto)/i
        instructions = ExecutorCommand.new(  
            DecrementStackCommand.new,
            FirstOperandCommand.new,            
            IfGotoCommand.new(instruction),
        ).execute if instruction.split.first =~ /^(if-goto)/i
        instructions
    end

    def handle_function(instruction)
        instructions = []
        case instruction
        when /^(function)/i
            handle_function_definition(instruction)
            instructions = ExecutorCommand.new(FunctionCommand.new(instruction)).execute
        when /^(return)/i
            instructions = ExecutorCommand.new(
                ReturnCommand.new(get_latest_function_definition)
                ).execute
        when /^(call)/i
            instructions = ExecutorCommand.new(
                OffsetCommand.new(instruction.split[2].to_i + 5),
                CallCommand.new(instruction)
            ).execute
        end
        instructions
    end

    def handle_function_definition(instruction)
        Parser.push_func instruction.split[1]
    end

    def get_latest_function_definition
        Parser.pop_func
    end
end