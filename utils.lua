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


-- moves forward j blocks, clearing it's path on the way
local function dig_move_foward(j)
    for i=1,j do
        if turtle.detect()
            turtle.dig()
        end
        turtle.forward()
    end
end

-- moves up j blocks, clearing it's path on the way
local function dig_move_up(j)
    for i=1,j do
        if turtle.detectUp()
            turtle.digUp()
        end
        turtle.up()
    end
end

local function rotate_clockwise(degrees)
    local num_rotates = degrees % 90
    for i=1,num_rotates do 
        turtle.turnRight()
    end
end

return { is_block_placeable = is_block_placeable,get_next_block = get_next_block, loop_around_right = loop_around_right, loop_around_left = loop_around_left , dig_move_forward = dig_move_forward, rotate_clockwise = rotate_clockwise}