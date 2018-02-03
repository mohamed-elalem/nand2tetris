class CompileEngine
    
    def compile_var_dec
        while @tokenizer.current_token == 'var'
            @xml += indentation + "<varDec>\n"
            indent
            compile_keyword
            until @tokenizer.current_token == ';'
                if @tokenizer.type == :identifier
                    compile_identifier
                elsif @tokenizer.type == :keyword
                    compile_keyword
                end
                compile_symbol if @tokenizer.current_token == ','
            end
            compile_symbol
            unindent
            @xml += indentation + "</varDec>\n"
        end
    end
end