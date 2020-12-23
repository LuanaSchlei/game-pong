WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        vsync = true,
        resizable = false
    })
end

function love.draw()
    love.graphics.print("Hello Pong!", WINDOW_WIDTH / 2 - 34, WINDOW_HEIGHT / 2 - 6)
end
