module Options
    OFFSET_REGISTER = 'R13'
    STATIC_BASE = 16
    TEMP_BASE = 5
    MEMORY_SEGMENTS = {
        local: 'LCL',
        this: 'THIS',
        that: 'THAT',
        argument: 'ARG',
        '0': 'THIS',
        '1': 'THAT'
    }.freeze
end