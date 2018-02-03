class CompileEngine
    def compile_subroutine_body
        @xml += indentation + "<subroutineBody>\n"
        indent
        compile_symbol
        compile_var_dec
        compile_statements
        compile_symbol
        unindent
        @xml += indentation + "</subroutineBody>\n"
    end
end