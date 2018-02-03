class CompileEngine
    def compile_else_statement
        @xml += indentation + "<elseStatement>\n"
        indent
        compile_keyword
        compile_symbol
        compile_statements
        compile_symbol
        unindent
        @xml += indentation + "</elseStatement>\n"
    end
end