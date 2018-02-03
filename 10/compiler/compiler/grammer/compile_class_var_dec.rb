class CompileEngine
    def compile_class_var_dec
        compile_error unless %w(field static).include? @tokenizer.current_token
        @xml += indentation + "<classVarDec>\n"
        indent
        compile_keyword
        if @tokenizer.type == :keyword
            compile_keyword
        else
            compile_identifier
        end
        until @tokenizer.current_token == ';'
            compile_identifier
            compile_symbol if @tokenizer.current_token == ','
        end
        compile_symbol
        unindent
        @xml += indentation + "</classVarDec>\n"
    end
end