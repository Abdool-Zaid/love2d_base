local Str = require("./test/temp")

function love.draw()
    love.graphics.print(Str.string, 400, 300)
end