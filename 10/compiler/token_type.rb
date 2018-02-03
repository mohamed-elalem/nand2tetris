module TokenType
    
    class << self
        attr_accessor :keyword, :symbol
        
        def included(klass)
            @keyword = %w(
                class constructor function method field static var int char boolean void
                true false null this let do if else while return
            )
            @symbol = "{}()[].,;+-*/&|<>=~"
        end    
    end
    
    def token_type(token)
        return false if token.nil?
        return :keyword if TokenType.keyword.include? token
        return :symbol if TokenType.symbol.include? token
        return :integerConstant if token =~ /^[[:digit:]]+$/
        return :stringConstant if token =~ /^\"[^\"]*\"$/
        return :identifier if token =~ /[a-zA-Z_]\w*/
    end
end