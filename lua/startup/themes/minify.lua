function Minify(table)
    local result = ""

    for _, t in ipairs(table) do
        result = result .. t .. "\n"
    end

    return result
end
