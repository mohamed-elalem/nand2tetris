require './assembler'

args = ARGV

assembler = Assembler.new

args.each do |file_path|
    assembler.file_path = file_path
    assembler.assemble
end