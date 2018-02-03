class CompileEngine
    def compile_identifier
        type = @tokenizer.type
        compile_error if @tokenizer.type != :identifier
        @xml += indentation + "<#{type.to_s}>"
        @xml += @tokenizer.next_token
        @xml += "</#{type.to_s}>\n"
    end
end