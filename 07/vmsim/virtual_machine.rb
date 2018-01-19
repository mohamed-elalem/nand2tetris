require './stack'
require './parser'
require 'pp'

class VirtualMachine
    def initialize(file_path)
        @file_path = File.absolute_path file_path
        @directory_path = File.dirname @file_path
        @basename = File.basename(@file_path, '.vm')
        Stack::destroy
        initialize_engine
        load_program
        execute_program
        save_program
    end

    def initialize_engine
        @program = []
        @parser = Parser.new
        @vm_code = []
    end

    def load_program
        file = File.open(@file_path, "r")
        file.each_line do |line|
            sanitized_line = line.strip.gsub(/\/\/.*/, '')
            @program << sanitized_line unless sanitized_line.empty?
        end
    end

    def execute_program
        @program.each do |instruction|
            @vm_code.push(*@parser.parse(instruction))
            # @vm_code << '@30000'
        end
    end

    def save_program
        file = File.open(%W(#{@directory_path} #{@basename}).join('/') + '.asm', "w")
        @vm_code.each do |instruction|
            file.puts instruction
        end
        file.close
        p "Wrote file successfully to " + %W(#{@directory_path} #{@basename}).join('/') + '.asm'
    end
end