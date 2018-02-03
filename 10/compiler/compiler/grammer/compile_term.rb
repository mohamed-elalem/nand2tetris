class CompileEngine

    def compile_term
        @xml += indentation + "<term>\n"
        indent
        if @tokenizer.type == :integerConstant
            compile_integer_constant
        elsif @tokenizer.type == :stringConstant
            compile_string_constant
        elsif @tokenizer.type == :keyword
            compile_keyword_constant
        elsif @tokenizer.current_token == '('
            compile_symbol
            compile_expression
            compile_symbol
        elsif @tokenizer.type == :symbol
            compile_symbol
            compile_expression
        elsif @tokenizer.type == :identifier
            case @tokenizer.look_ahead(1)
            when '['
                compile_identifier
                compile_symbol
                compile_expression
                compile_symbol
            when '.', '('
                compile_subroutine_call
            else
                compile_identifier    
            end
        end
        unindent
        @xml += indentation + "</term>\n"
    end
end