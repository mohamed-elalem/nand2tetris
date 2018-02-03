class CompileEngine
    def compile_statements
        @xml += indentation + "<statements>\n"
            indent
        until @tokenizer.current_token == '}'
            case @tokenizer.current_token
                when 'let' then compile_let_statement
                when 'if' then compile_if_statement
                when 'else' then compile_else_statement
                when 'while' then compile_while_statement
                when 'do' then compile_do_statement
                when 'return' then compile_return_statement
            end
        end
        unindent
        @xml += indentation + "</statements>\n"
    end
end