local utils = require("utils")

function getFirstTwoUniqueBlocks()
    local foundBlocks = {}
    local uniqueBlocks = {}

    for i = 1, 16 do
        local itemDetail = turtle.getItemDetail(i)
        
        if itemDetail then
            local blockName = itemDetail.name

            if not foundBlocks[blockName] then
                table.insert(uniqueBlocks, blockName)
                foundBlocks[blockName] = true
            end

            if #uniqueBlocks == 2 then
                break
            end
        end
    end

    return uniqueBlocks
end

local function spiral_rect(x, y, height, thickness)
    utils.dig_move_up(-2)
    local is_y_side = false
    local num_to_build = 0
    local block_to_place = 0
    local blocks_placed = 1

    local blocks = getFirstTwoUniqueBlocks()
    utils.getNextBlockByName(blocks[block_to_place + 1])
    for i=1,height do
        for j=1,4 do
            if is_y_side then 
                num_to_build = tonumber(y)
            else
                num_to_build = tonumber(x)
            end

            for k=1,num_to_build do
                if k < num_to_build then
                    utils.dig_place_up()
                end
                utils.dig_move_forward(1)
                if (blocks_placed % thickness == 0) then
                    block_to_place = 1 - block_to_place
                end
                utils.getNextBlockByName(blocks[block_to_place + 1])
                blocks_placed = blocks_placed + 1
            end
            utils.rotate_clockwise(90)
            is_y_side = not is_y_side
        end
        utils.dig_move_up(-1)
    end
end


local params={...}
spiral_rect(params[1], params[2], params[3], params[4])