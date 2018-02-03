class CompileEngine

    def compile_symbol
        compile_error if @tokenizer.type != :symbol
        @xml += indentation + "<symbol>"
        @xml += @tokenizer.next_token.encode(xml: :text)
        @xml += "</symbol>\n"
    end
end