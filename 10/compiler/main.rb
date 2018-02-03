cin = ARGV

require './compiler/compile_engine'
require './tokenizer'
require 'fileutils'

def handle_file(file)
    tokenizer = Tokenizer.new(file)
    compiler = CompileEngine.new(tokenizer)
    compiler.compile
    dump_file(compiler.xml, file)
end

def dump_file(xml, file)
    dir = File.dirname(file) + "/bin"
    basename = File.basename(file, ".jack")
    FileUtils.mkdir_p(dir)
    out = File.open([dir, basename + '.xml'].join('/'), 'w')
    out.puts xml
    out.close
end

if cin.length != 1
    p "Too many args" if cin.length > 1
    p "Argument is missing" if cin.length == 0
    exit(1)
end

if File.file? cin.first
    File.open(cin.first) do |file|
        handle_file(file)
    end
else
    base_dir = File.absolute_path cin.first
    Dir.entries(cin.first).each do |entry|
        file_name = [base_dir, entry].join("/")
        if File.extname(file_name) == ".jack" && File.file?(file_name)
            File.open(file_name, "r") do |file|
                handle_file(file)
            end
        end
    end
end