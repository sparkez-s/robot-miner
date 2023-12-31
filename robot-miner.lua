local r = require("robot")

function break_rotate(direction)
    if direction == true then
        r.turnLeft()
        r.swing(3)
        r.forward()
        r.turnLeft()
    else
        r.turnRight()
        r.swing(3)
        r.forward()
        r.turnRight()
    end
end

function row(length, direction)
    for x = 0, length - 1 do
        r.swing(3)
        r.forward()
    end
    break_rotate(direction)
end

function square(length)
    for x = 0, length * 2 do
        if x%2 == 0 then row(length * 2, true) else row(length * 2, false) end
    end
end

for x = 0, 4 do
    square(2)
    r.swing(0)
    r.down()
    r.turnLeft()
end