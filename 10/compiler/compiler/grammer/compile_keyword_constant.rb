class CompileEngine
    def compile_keyword_constant
        @xml += indentation + "<keywordConstant>"
        @xml += @tokenizer.next_token
        @xml += "</keywordConstant>\n"
    end
end