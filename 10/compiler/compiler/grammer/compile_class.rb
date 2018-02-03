class CompileEngine


    def compile_class
        token = @tokenizer.current_token
        raise NameError if token != 'class'
        @xml += indentation + "<#{@tokenizer.current_token}>\n"
        indent
        compile_keyword
        compile_identifier
        compile_symbol
        until @tokenizer.current_token == '}'
            compile_class_var_dec if %w(static field).include? @tokenizer.current_token
            compile_class_subroutine_dec if %w(constructor function method).include? @tokenizer.current_token
        end
        compile_symbol
        unindent
        @xml += indentation + "</#{token}>"
    end
end