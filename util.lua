-- I'll try to comment whenever anything just references this file


-- entities

function create_ent(sprite_name)
local ent = {name=sprite_name,x=0,y=0,d='',movingt=0}
    return ent
end

function change_mode(m)
    love.keypressed = keypressed[m]
    love.update = update[m]
    love.draw = draw[m]
end

-----