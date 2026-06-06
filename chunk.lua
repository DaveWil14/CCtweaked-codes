layers = 1 --for the nether use 40
-- and start it touching the first bedrock

for l=1,layers do
    for r=1,16 do
        turtle.placeUp()
        turtle.placeDown()
        turtle.digUp()
        turtle.digDown()
        for c=1,15 do
            while turtle.detect() == true do
                turtle.dig()
            end
            turtle.forward()
            turtle.placeUp()
            turtle.placeDown()
            turtle.digUp()
            turtle.digDown()
        end
        if l == layers and r == 16 then
            print('task finished')
        elseif r == 16 then
            turtle.down()
            turtle.digDown()
            turtle.down()
            turtle.digDown()
            turtle.down()
            turtle.turnRight()
        elseif r%2 == 1 then
            turtle.turnRight()
            while turtle.detect() == true do
                turtle.dig()
            end
            turtle.forward()
            turtle.turnRight()
        else
            turtle.turnLeft()
            while turtle.detect() == true do
                turtle.dig()
            end
            turtle.forward()
            turtle.turnLeft()
        end
    end
end
layers = layers -1
for i=1,layers do
    turtle.up()
    turtle.up()
    turtle.up()
end
