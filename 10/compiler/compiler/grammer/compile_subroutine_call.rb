class CompileEngine
    def compile_subroutine_call
        @xml += indentation + "<subroutineCall>\n"
        indent

        compile_identifier
        if @tokenizer.current_token == '.'
            compile_symbol
            compile_identifier
        end
        compile_symbol
        compile_expression_list
        compile_symbol
        unindent
        @xml += indentation + "</subroutineCall>\n"
    end
end