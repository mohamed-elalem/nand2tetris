require 'pp'
require './parser'
require './options'
require './a_instruction_command'
require './c_instruction_command'
require './null_command'

class Assembler
    include Options

    attr_accessor :file_path
    
    def assemble
        initialize_engine
        load_instructions
        parse_instructions
        first_pass
        second_pass
        save_instructions
    end

    def file_path=(file_path)
        @file_path = File.expand_path(file_path)
    end

private
    def initialize_engine
        @parser = Parser.new
        @directory_path = File.dirname @file_path
        @basename = File.basename(@file_path, ".asm")
        @instructions = []
        @parsed_instructions = []
        @symbol_table = RESERVED_VARIABLED
        @machine_instructions = []
    end

    def load_instructions
        file = File.new(@file_path, "r")
        unless file.nil?
            file.each_line do |line|
                sanitized_instruction = line.gsub(/\/{2}.*/m, '').chomp.strip
                @instructions << sanitized_instruction unless sanitized_instruction.empty?       
            end
        end
        file.close
    end

    def parse_instructions
        begin
            @instructions.each_with_index do |instruction, instruction_count|
                instruction_type, instruction_number = @parser.parse instruction
                raise StandardError.new("Syntax error at instruction #{instruction_count}") if instruction_type == :invalid_instruction
                instruction.gsub!(/[\(\)]/, '') if instruction_type == :label
                @parsed_instructions << { 
                                            instruction: instruction,
                                            instruction_number: instruction_number,
                                            instruction_type: instruction_type
                                        }
            end
        rescue StandardError => e
            p e.message
            abort
        end
    end

    def first_pass
        @parsed_instructions.each do |instruction|
            @symbol_table[instruction[:instruction].to_sym] = instruction[:instruction_number] if instruction[:instruction_type] == :label
        end
    end

    def second_pass
        variables_count = 0
        @parsed_instructions.each do |instruction|
            command = NullCommand.new
            if instruction[:instruction_type] == :c_instruction
                command = CInstructionCommand.new(instruction[:instruction])
            elsif instruction[:instruction_type] == :a_instruction
                address = raw_instruction = instruction[:instruction][1..-1]
                if @symbol_table.key? raw_instruction.to_sym
                    address = @symbol_table[raw_instruction.to_sym]
                elsif raw_instruction != raw_instruction.to_i.to_s
                    variables_count += 1
                end
                command = AInstructionCommand.new(address)
            end
            machine_instruction = command.execute
            @machine_instructions << machine_instruction unless machine_instruction.nil?
        end
    end

    def save_instructions
        file = File.open(@directory_path + "/" + @basename + ".hack", "w")
        unless file.nil?
            @machine_instructions.each do |instruction|
                file.puts instruction
            end
        end
        file.close
        p "Successfully wrote to #{file.path}"
    end
end