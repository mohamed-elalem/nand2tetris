class CompileEngine
    def compile_parameter_list
        @xml += indentation + "<parameterList>\n"
        indent
        until @tokenizer.current_token == ')'
            if @tokenizer.type == :keyword
                compile_keyword

            elsif @tokenizer.type == :identifier
                compile_identifier

            elsif @tokenizer.current_token == ','
                compile_symbol
            end
        end
        unindent
        @xml += indentation + "</parameterList>\n"        
    end
end