local utils = require("utils")

local function spiral_rect(x, y, height, thickness)
    utils.dig_move_up(-2)
    local is_y_side = false
    local num_to_build = 0
    local block_to_place = 1
    local blocks_placed = 1
    for i=1,height do
        for j=1,4 do
            if is_y_side then 
                num_to_build = tonumber(y)
            else
                num_to_build = tonumber(x)
            end

            for k=1,num_to_build do
                utils.get_next_block()
                utils.dig_place_up()
                if (blocks_placed % thickness == 0) then
                    block_to_place = block_to_place % 16 + 1
                end
                turtle.select(block_to_place)
                blocks_placed = blocks_placed + 1
                if k < num_to_build then
                    utils.dig_move_forward(1)
                end
            end
            utils.rotate_clockwise(90)
            is_y_side = not is_y_side
        end
        utils.dig_move_up(-1)
    end
end


local params={...}
spiral_rect(params[1], params[2], params[3], params[4])