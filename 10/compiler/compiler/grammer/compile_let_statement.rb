class CompileEngine
    def compile_let_statement
        compile_error unless @tokenizer.current_token == 'let'
        @xml += indentation + "<letStatement>\n"
        indent
        compile_keyword
        compile_identifier
        if @tokenizer.current_token == '['
            compile_symbol
            compile_expression
            compile_symbol
        elsif @tokenizer.current_token == '.'
            compile_symbol
            compile_identifier
        end
        compile_symbol
        compile_expression
        compile_symbol
        unindent
        @xml += indentation + "</letStatement>\n"        
    end
end