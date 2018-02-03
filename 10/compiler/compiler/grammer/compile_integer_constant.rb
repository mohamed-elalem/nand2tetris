class CompileEngine
    def compile_integer_constant
        compile_error unless @tokenizer.type == :integerConstant
        @xml += indentation + "<integerConstant>"
        @xml += @tokenizer.int_val
        @tokenizer.next_token
        @xml += "</integerConstant>\n"
    end
end