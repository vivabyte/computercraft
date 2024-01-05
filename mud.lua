local dirtslot = 2
local x = 0

function selectdirt()    
    if turtle.getItemCount(dirtslot) == 0 then
    dirtslot = dirtslot + 1
    turtle.select(dirtslot)
   
        if dirtslot >= 14 then
        os.exit()
        end
                                
    else
    turtle.select(dirtslot)
    
    end
end

function convert()
    turtle.select(2)
    turtle.turnRight()
    turtle.drop()
    turtle.turnLeft()
    x = 0
end

while true do
while x <= 64 do

selectdirt()
turtle.place()
turtle.select(1)
turtle.place()
turtle.dig()
turtle.placeDown()
x=x+1

end
convert()
end
