class CompileEngine
    def compile_expression
        unless @tokenizer.current_token == ';'
            @xml += indentation + "<expression>\n"
            indent               
            compile_term
            unless ";[]()".include? @tokenizer.current_token
                compile_symbol
                compile_term
            end
            unindent
            @xml += indentation + "</expression>\n"
        end
    end
end