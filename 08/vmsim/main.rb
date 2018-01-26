require './virtual_machine'
require 'pp'
save_path = nil
ARGV.each do |path|
    virtual_machine = VirtualMachine.new(path).start if File.file? path
    Dir.glob(path + "**/*.vm").select do |entry|
        p "Handling #{entry}"
        VirtualMachine.new(entry).start
    end if File.directory? path

    save_path ||= path
end
VirtualMachine.save_program(File.absolute_path save_path)