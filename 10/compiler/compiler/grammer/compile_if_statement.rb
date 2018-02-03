class CompileEngine
    def compile_if_statement
        @xml += indentation + "<ifStatement>\n"
        indent
        compile_keyword
        compile_symbol
        compile_expression
        compile_symbol
        compile_symbol
        compile_statements
        compile_symbol
        unindent
        @xml += indentation + "</ifStatement>\n"
    end
end