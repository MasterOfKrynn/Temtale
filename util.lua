-- I'll try to comment whenever anything just references this file


-- entities

music = {
    
    title = "startmenu", -- make it a list ???

}

function play_bgm(m, direct_song)
    stop_bgm()
    
    if direct_song then
        src.audio.bgm[direct_song]:play()
        current_audio = direct_song
    else
        local file = music[(m or mode)]
        if file then
            src.audio.bgm[file]:play()
            current_audio = file
        end 
    end
end
function stop_bgm()
    local file = current_audio
    if file then
        src.audio.bgm[file]:stop()
    end
end
function sfx(soundeffect) src.audio.sfc[soundeffect]:play() end

function create_ent(sprite_name)
local ent = {name=sprite_name,x=0,y=0,d='',movingt=0}
    return ent
end

function change_mode(m)
    mode = m
    love.keypressed = keypressed[m]
    love.update = update[m]
    love.draw = draw[m]
    init[m](m)
    play_bgm(m)
end

function toseconds(s)
    return (s*60)
end

function entering(k)
    return (k == "x" or k == "return")
end

function render_skeletext(text, x, y, spd)
    spd = spd or 1
    for i = 1, 10 do
        love.graphics.print()
        --sfx("")
        --wait()
    end
end
-----