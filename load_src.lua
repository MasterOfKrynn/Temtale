local src = {spr={tiles={}},audio={bgm={},sfx={}},fonts={}}

local function add_image(x)
    src.spr[x] = love.graphics.newImage("src/spr/".. x ..".png")
end
local function add_music(x, typee)
    local filter = "stream"
    local localtype = (typee or "bgm")
    if localtype == "sfx" then filter = "static" end
    src.audio[localtype][x] =
        love.audio.newSource("src/audio/" .. localtype .. "/" .. x .. ".wav", filter)
    src.audio[localtype][x]:setLooping(true)
end
local function add_font(x)
    src.fonts[x] = love.graphics.newFont("src/fonts/".. x ..".otf")
end

-- good fonts, no?
add_font("dsans"); add_font("dmono")

-- an important line for scaling -,-
love.graphics.setDefaultFilter("nearest", "nearest")

add_image("temtale")

add_image("tem")
add_image("tem2")
add_image("tem3")
add_image("temleft")
add_image("temleft2")
add_image("temleft3")
add_image("temup")
add_image("temup2")
add_image("temup3")

add_music("savetheworld")
add_music("temvillage")
add_music("waterfall")
add_music("startmenu")
add_music("onceuponatime")
add_music("uwasotemperate")

for i = 0, 5 do
    src.spr.tiles[i] = {}
    src.spr.tiles[i].image = love.graphics.newImage("src/spr/tiles/".. tostring(i) ..".png")
end

-- add tile metadata

return src