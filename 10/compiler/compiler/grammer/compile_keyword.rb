class CompileEngine

    def compile_keyword
        compile_error if @tokenizer.type != :keyword
        token = @tokenizer.next_token
        @xml += indentation + "<keyword>"
        @xml += "#{token}"
        @xml += "</keyword>\n"        
    end
end