room = 1

init.walking = function(m)

end

function render_tile(t, x, y)
    -- if t special then

    -- else
        love.graphics.draw(t, (y-1)*tw, (x-1)*tw)
    -- end
end

function move(ent, dir, xory, speeddir)
    ent[xory] = ent[xory] + (speed*speeddir)
    ent.d = dir
    ent.movingt = ent.movingt + 1
    if ent.movingt == 60 then
        ent.movingt = 0
    end
end

draw.walking = function()
    love.graphics.scale(3,3)


    -- draw room
    for x = 1, #maps[room] do
        for y = 1, #maps[room][x] do
            render_tile(src.spr.tiles[maps[room][x][y]].image,x,y)
        end
    end

    -- draw Tem!! <33
    local name = "tem"
    local localx = tem.x
    local flip = 1
    local locald = tem.d
    local number = math.floor((tem.movingt / 15))+1

    if number == 1 then number = '' end
    if tem.d == 'right' then
        flip = -1
        localx = localx + tem.w
        locald = 'left'
    elseif tem.d == "down" then
       locald = '' 
    end
    if number == 3 then
        number = ''
    elseif number == 4 then
        number = 3
    end
   
    local finalspr = (tem.name .. locald .. tostring(number))
    love.graphics.draw(src.spr[finalspr], localx, tem.y, 0, flip, 1)

    general_draw()

    love.graphics.scale(1,1)
end


update.walking = function()
    -- controls lol
    local moving
    if love.keyboard.isDown("left") then
        if not (tem.d == 'left') then
           -- tem.x = tem.x - tem.w
        end
        move(tem, 'left', "x", -1)
        tem.w = 26
        moving = 1
    end
    if love.keyboard.isDown("right") then
        if not (tem.d == 'right') then
          --  tem.x = tem.x + tem.w
        end
        move(tem, 'right', "x", 1)
        tem.w = 26
        moving = 1
    end
    if love.keyboard.isDown("up") then
        move(tem, 'up', "y", -1)
        tem.w = 23
        moving = 1
    end
    if love.keyboard.isDown("down") then
        move(tem, 'down', "y", 1)
        tem.w = 23
        moving = 1
    end
    
    if not moving then
        tem.movingt = 0
    end

    

    general_update()
end