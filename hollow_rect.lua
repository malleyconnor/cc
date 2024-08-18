local utils = require("utils")

local function hollow_rect(x, y, height)
    local x_width = x // 2
    local y_width = y // 2

    utils.dig_move_forward(x_width)
    utils.rotate_clockwise(180)
    utils.dig_move_forward(y_width)
    utils.rotate_clockwise(180)
    utils.dig_move_up(1)
    local is_y_side == true
    local num_to_build = 0
    for i=1,height
        for j=1,4 do
            if is_y_side then 
                num_to_build = y
            else
                num_to_build = x
            end

            for k=1,num_to_build
                turtle.get_next_block()
                turtle.placeDown()
                if k < num_to_build then
                    turtle.dig_move_forward()
                end
            end
            utils.rotate_clockwise(90)
            is_y_side = not is_y_side
        end
    end
end