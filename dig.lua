local function digHole(x, y, z)
    for depth = 1, z do
        for height = 1, y do
            for width = 1, x do
                if turtle.detectDown() then
                    turtle.digDown()
                end
                
                if width < x then
                    turtle.forward()
                end
            end

            if height < y then
                if height % 2 == 1 then
                    turtle.turnRight()
                    if turtle.detect() then
                        turtle.dig()
                    end
                    turtle.forward()
                    turtle.turnRight()
                else
                    turtle.turnLeft()
                    if turtle.detect() then
                        turtle.dig()
                    end
                    turtle.forward()
                    turtle.turnLeft()
                end
            end
        end

        -- Return to the starting position in the current layer
        if depth < z then
            -- Move to the next layer down
            if y % 2 == 0 then
                turtle.turnRight()
                turtle.turnRight()
            end
            turtle.down()
        end
    end
end

-- Get the arguments
local params = {...}
local x = tonumber(params[1])
local y = tonumber(params[2])
local z = tonumber(params[3])

-- Start digging the hole
digHole(x, y, z)
