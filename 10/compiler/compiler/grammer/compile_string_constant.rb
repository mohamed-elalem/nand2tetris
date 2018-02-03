class CompileEngine
    def compile_string_constant
        compile_error unless @tokenizer.type == :stringConstant
        @xml += indentation + "<stringConstant>"
        @xml += @tokenizer.string_val
        @tokenizer.next_token
        @xml += "</stringConstant>\n"
    end
end