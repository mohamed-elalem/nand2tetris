require './stack'
require './parser'
require 'pp'

class VirtualMachine

    class << self
        attr_accessor :vm_code

        def save_program(path)
            directory_path = File.dirname path
            file_name = %W(#{directory_path} #{File.basename(path, ".vm")}).join('/') + '.asm' if File.file? path
            file_name = %W(#{path} #{File.basename path}).join('/') + '.asm' if File.directory? path
            file = File.open(file_name, "w")
            @vm_code.each do |instruction|
                file.puts instruction
            end
            file.close
            p "Wrote file successfully to #{file_name}"
        end
    end

    def initialize(file_path)
        @file_path = File.absolute_path file_path
        @directory_path = File.dirname @file_path
        @basename = File.basename(@file_path, '.vm')
        Stack::destroy
    end

    def start
        initialize_engine
        load_program
        execute_program
    end

    def initialize_engine
        @program = []
        @parser = Parser.new
        VirtualMachine.vm_code ||= []
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
            VirtualMachine.vm_code.push(*@parser.parse(instruction))
            VirtualMachine.vm_code << '@30000'
        end
    end
end