local src = {spr={tiles={}},music={},fonts={}}

local function add_image(x)
    src.spr[x] = love.graphics.newImage("src/spr/".. x ..".png")
end
local function add_music(x)

end
local function add_font(x)
    src.fonts[x] = love.graphics.newFont("src/fonts/".. x ..".otf")
end

love.graphics.setDefaultFilter("nearest", "nearest")

add_font("dsans"); add_font("dmono")
add_image("tem")
add_image("tem2")
add_image("tem3")
add_image("temleft")
add_image("temleft2")
add_image("temleft3")
add_image("temup")
add_image("temup2")
add_image("temup3")


add_image("temtale")

for i = 0, 5 do
    src.spr.tiles[i] = {}
    src.spr.tiles[i].image = love.graphics.newImage("src/spr/tiles/".. tostring(i) ..".png")
end

-- add tile metadata

return src