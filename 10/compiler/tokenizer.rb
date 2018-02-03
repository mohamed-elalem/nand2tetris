require_relative './token_type'

class Tokenizer
    include TokenType

    def initialize(file)
        @program = file
                    .read
                    .gsub(/\/\/.*/, '')
                    .gsub(/\/\*+[^(\/)]*\*\//m, '')
                    .split(/([\{\}\(\)\[\]\.,;\+\-\*\/\&\|\<\>\=\~])/)
                    .map(&:strip)
                    .reject { |s| s.empty? }
        @program = @program.map do |token|
            if token[0] == '"'
                token
            else
                token.split
            end
        end.flatten
        @token_index = 0
    end

    def current_token
        @program[@token_index]
    end

    def next_token
        token = @program[@token_index]
        @token_index += 1
        token
    end

    def int_val
        @program[@token_index]
    end

    def string_val
        @program[@token_index].gsub('"', '')
    end

    def type
        token_type current_token
    end

    def look_ahead(steps)
        @program[@token_index + steps] 
    end

end