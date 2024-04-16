-- Prime factorization idk
local function decompose(n)
    local factors = {}
    local divisor = 2

    while n > 1 do
        if n % divisor == 0 then
            table.insert(factors, divisor)
            n = n / divisor
        else
            divisor = divisor + 1
        end
    end

    return factors
end

local function main()
    print("Insert a number:")
    local number = tonumber(io.read())

    if number == nil or number <= 1 then
        print("Invalid number") -- should be bigger than 1
    else
        local factors = decompose(number)
        print("Factored " .. number .. " is:")
        for i = 1, #factors do
            io.write(factors[i])
            if i < #factors then
                io.write(" * ")
            end
        end
    end
end

main()