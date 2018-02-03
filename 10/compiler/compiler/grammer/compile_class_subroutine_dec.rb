class CompileEngine
    def compile_class_subroutine_dec
        compile_error unless %w(constructor function method).include? @tokenizer.current_token
        @xml += indentation + "<subroutineDec>\n"
        indent
        compile_keyword
        if @tokenizer.type == :keyword
            compile_keyword
        elsif @tokenizer.type == :identifier
            compile_identifier
        end
        compile_identifier
        compile_symbol
        compile_parameter_list
        compile_symbol
        compile_subroutine_body
        unindent
        @xml += indentation + "</subroutineDec>\n"
    end
end