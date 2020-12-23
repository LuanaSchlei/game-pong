WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

push = require 'push'

--[[
    isso é um comentario
]]
function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    local smallFont = love.graphics.newFont('04B03.TTF', 8)
    love.graphics.setFont(smallFont)

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        vsync = true,
        resizable = false
    })
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    push:apply('start')

    -- it clears the screen with the defined color
    love.graphics.clear(40 / 255, 45 / 255, 52 / 255, 255 / 255)

    -- it draws the pong ball
    love.graphics.rectangle('fill', VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 5, 5)

    love.graphics.rectangle('fill', 5, 20, 5, 20)
    love.graphics.rectangle('fill', VIRTUAL_WIDTH - 10, VIRTUAL_HEIGHT - 40, 5, 20)
 
    -- it shows the name of the game
    love.graphics.print("Hello Pong!", VIRTUAL_WIDTH / 2 - 22, 20)

    push:apply('end')
end
