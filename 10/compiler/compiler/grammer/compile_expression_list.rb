class CompileEngine
    def compile_expression_list
        @xml += indentation + "<expressionList>\n"
        indent
        until @tokenizer.current_token == ')'
            compile_expression
            compile_symbol if @tokenizer.current_token == ','
        end
        unindent
        @xml += indentation + "</expressionList>\n"
    end
end