function isChest(i)
    local chestName = "minecraft:chest"

    -- Get the item detail from the current slot
    local item = turtle.getItemDetail(i)

    -- Check if the item is a wooden chest
    if item and item.name == chestName then
        return true
    else
        return false
    end
end


-- Function to find the slot number of a wooden chest
function getChestSlot()
    -- Define the item ID or name for a wooden chest
    local chestName = "minecraft:chest" -- Update if needed based on your Minecraft version or mods

    -- Loop through each slot in the turtle's inventory
    for slot = 1, 16 do
        -- Select the slot
        turtle.select(slot)
        
        -- Get the item detail from the selected slot
        local item = turtle.getItemDetail()

        -- Check if the item is a wooden chest
        if item and item.name == chestName then
            return slot
        end
    end

    -- Return nil if the wooden chest was not found
    return nil
end

local blocks_digged_per_chest = 512

local function digHole(x, y, z)
    local chestSlot= getChestSlot()
    local blocks_digged = 0
    local depth = 1
    while (depth < z+1) do
        for height = 1, y do
            for width = 1, x do
                if turtle.detectDown() then
                    turtle.digDown()
                    blocks_digged = blocks_digged + 1 
                end
                
                if width < x then
                    if turtle.detect() then
                        turtle.dig()
                        blocks_digged = blocks_digged + 1 
                    end
                    turtle.forward()
                end

                if (blocks_digged > blocks_digged_per_chest) and not (chestSlot == nil) then
                    if isChest(chestSlot) then
                        turtle.select(chestSlot)
                        turtle.placeUp()
                        for i=1,16 do
                            if not (i == chestSlot) then
                                turtle.select(i)
                                turtle.dropUp()
                            end
                        end
                    end 
                    blocks_digged = 0
                end
            end

            if height < y then
                if ((height % 2 == 1) and (depth % 2 == 1))  or ((height % 2 == 0) and (depth % 2 == 0)) then
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
        if depth < z-2 then
            turtle.turnRight()
            turtle.turnRight()
            turtle.down()
            turtle.digDown()
            turtle.down()
            turtle.digDown()
            turtle.down()
            depth = depth + 3
            end
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
