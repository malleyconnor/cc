local rect = require("rect")

local function square(x)
    rect(x,x)
end

local params = {...}
square(params[1])

return {
    square = square
}