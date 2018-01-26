module DebugCommand
    def with_comments(instruction)
        instructions = ["// Begin command #{instruction}"]
        instructions.push(*yield) if block_given?
        instructions << %Q{// End command}
    end
end