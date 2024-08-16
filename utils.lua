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

return {
    is_block_placeable = is_block_placeable,
    get_next_block = get_next_block
}