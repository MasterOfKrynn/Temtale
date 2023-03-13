-- I'll try to comment whenever anything just references this file


-- entities

music = {
    
    title = "startmenu", -- make it a list ???

}

function play_bgm(m)
    local file = music[(m or mode)]
    if file then
        src.audio.bgm[file]:play()
    end
end

function create_ent(sprite_name)
local ent = {name=sprite_name,x=0,y=0,d='',movingt=0}
    return ent
end

function change_mode(m)
    src.audio.bgm[music[mode]]:stop()

    mode = m
    love.keypressed = keypressed[m]
    love.update = update[m]
    love.draw = draw[m]
    init[m](m)
    play_bgm(m)
end

-----