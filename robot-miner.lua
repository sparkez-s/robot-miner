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

function square(length, width)
    for x = 0, width * 2 do
        if x%2 == 0 then row(length, true) else row(length, false) end
    end
end

square(2, 1)