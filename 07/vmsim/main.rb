require './virtual_machine'

ARGV.each do |file_path|
    virtual_machine = VirtualMachine.new file_path
end