local utils = require("utils")

local function rectangle(x, y)
    for i=1,y do
        for j=1,x do
            if not utils.get_next_block()
            then
                return
            end

            if not turtle.detectDown()
            then 
                turtle.placeDown()
            end

            if turtle.detect()
            then 
                turtle.dig()
            end
            turtle.forward()
        end

        if (i % 2) == 1
        then
            turtle.turnRight()
            turtle.forward()
            turtle.turnRight()
            turtle.forward()
        else
            turtle.turnLeft()
            turtle.forward()
            turtle.turnLeft()
            turtle.forward()
        end
    end
end

local params = {...}
rectangle(params[1], params[2])

return {
    rectangle = rectangle
}