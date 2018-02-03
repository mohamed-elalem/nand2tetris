class CompileEngine
    def compile_while_statement
        @xml += indentation + "<whileStatement>\n"
        indent
        compile_keyword
        compile_symbol
        compile_expression
        compile_symbol
        compile_symbol
        compile_statements
        compile_symbol
        unindent
        @xml += indentation + "</whileStatement>\n"
    end
end