--//// Temtale

--// requires
require "util"
src = require "load_src"
require "maps"
draw, update, keypressed, init = {}, {}, {}, {}
require "title"
require "walking"

-- game init --

-- vars
title = "TemTale"
mode = "title"
w, h = love.graphics.getWidth(), love.graphics.getHeight()
--tile width
tw = 16 -- ??
-- universal speed
speed=1

-- setup
love.window.setTitle(string.upper(title))

--draw

-- skeletony font
-- dmono is for dialogue? dsans is for menus?
love.graphics.setFont(src.fonts.dmono)


function general_draw() end

-- update
function general_update()
    
end

-- keypressed
function general_keypressed(k)
    if k == "f4" then
        love.window.setFullscreen(not love.window.getFullscreen())
    end
end



tem = create_ent("tem")
tem.w = 26
tem.h = 26

-- start
-- in util
change_mode(mode)
