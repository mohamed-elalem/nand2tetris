class CompileEngine
    def compile_return_statement
        @xml += indentation + "<returnStatement>\n"
        indent
        compile_keyword
        compile_expression unless @tokenizer.current_token == ';'
        compile_symbol
        unindent
        @xml += indentation + "</returnStatement>\n"
    end
end