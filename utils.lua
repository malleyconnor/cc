local function is_block_placeable(i)
    if turtle.getItemCount(i) == 0
    then
        return false
    end
    
    local tags = turtle.getItemDetail(i, true)["tags"]
    return not (tags["c:block_items"] == nil)
end

local function get_next_block()
    local curr_slot = turtle.getSelectedSlot()
    if is_block_placeable(curr_slot)
    then 
        return true
    end

    for i=1,16 do 
        turtle.select(i)
        if is_block_placeable(i)
        then
            return true
        end
    end

    return false
end

local function loop_around_right()
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
    turtle.forward()
end

local function loop_around_left()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnLeft()
    turtle.forward()
end

local function rotate_clockwise(degrees)
    local num_rotates = degrees / 90
    for i=1,num_rotates do 
        turtle.turnRight()
    end
end

-- moves forward j blocks, clearing it's path on the way
local function dig_move_forward(j)
    local k = math.abs(j)
    for i=1,k do
        if j > 0 then 
            turtle.dig()
            turtle.forward()
        else
            rotate_clockwise(180)
            turtle.dig()
            turtle.forward()
            rotate_clockwise(180)
        end
    end
end

-- moves up j blocks, clearing it's path on the way
local function dig_move_up(j)
    local k = math.abs(j)
    for i=1,k do
        if j > 0 then 
            turtle.digUp()
            turtle.up()
        else
            turtle.digDown()
            turtle.down()
        end
    end
end

local function dig_place_up()
    turtle.digUp()
    turtle.placeUp()
end

function getNextBlockByName(blockName, startSlot)
    startSlot = startSlot or 1  -- If startSlot isn't provided, default to the first slot

    for i = startSlot, 16 do
        local itemDetail = turtle.getItemDetail(i)
        
        if itemDetail and itemDetail.name == blockName then
            return i
        end
    end

    return nil  -- Return nil if no matching block is found
end


return { is_block_placeable = is_block_placeable,get_next_block = get_next_block, loop_around_right = loop_around_right, loop_around_left = loop_around_left , dig_move_forward = dig_move_forward, dig_move_up = dig_move_up, rotate_clockwise = rotate_clockwise, dig_place_up = dig_place_up, getNextBlockByName = getNextBlockByName}