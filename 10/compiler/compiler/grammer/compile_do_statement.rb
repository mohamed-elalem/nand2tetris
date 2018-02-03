class CompileEngine
    def compile_do_statement
        @xml += indentation + "<doStatement>\n"
        indent
        compile_keyword
        compile_subroutine_call
        compile_symbol
        unindent
        @xml += indentation + "</doStatement>\n"
    end
end