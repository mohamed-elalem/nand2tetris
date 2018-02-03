Dir[ __dir__ + "/grammer/*.rb"].each do |file|
    require_relative file
end


class CompileEngine
    attr_reader :xml

    SPACE_INDENTATION = 2

    def method_missing(func_name, *args)
        compile_func = %W(compile #{func_name}).join("_")
        if self.respond_to? compile_func
            self.send(compile_func.to_sym, args)
        else
            super
        end
    end

    def initialize(tokenizer)
        @tokenizer = tokenizer
        @xml = ''
        @stack = []
        @current_indentation = 0
    end

    def indentation
        ' ' * @current_indentation
    end

    def indent
        @current_indentation += SPACE_INDENTATION
    end

    def unindent
        @current_indentation -= SPACE_INDENTATION
    end

    def compile
        compile_class
    end

    def compile_error
        method_name = caller[0][/`.*'/][1..-2]
        raise "#{@tokenizer.current_token} is not #{method_name.sub(/[^_]*_/, '')}"
    end
end