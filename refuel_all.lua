local function refuel_all()
    for i=1,16 do
        turtle.select(i)
        turtle.refuel()
    end 
    turtle.select(1)
end

refuel_all()