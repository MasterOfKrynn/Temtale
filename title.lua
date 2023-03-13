title_select = {1, 1}

init.title = function(m)
    
end

draw.title = function()
    love.graphics.scale(1,1)
    love.graphics.setColor(1,1,1)
    love.graphics.draw(src.spr.temtale, w/2-304, 80)
    --love.graphics.scale(2,2)
    love.graphics.print("by Krynn", w-110, h-25)
    love.graphics.print("[Press x to start.]", w/2-90, h-25)

    if title_select[1] == 1 and title_select[2] == 1 then
        love.graphics.setColor(1,1,0)
    end
    love.graphics.print("Continue", 320-125, 220)
    love.graphics.setColor(1,1,1)
    if title_select[1] == 2 and title_select[2] == 1 then
        love.graphics.setColor(1,1,0)
    end
    love.graphics.print("Settings", 320+25, 220)
    love.graphics.setColor(1,1,1)
    if title_select[2] == 2 then
        love.graphics.setColor(1,1,0)
    end
    love.graphics.print("Reset", 320-25, 250)
    love.graphics.setColor(1,1,1)
end

update.title = function()
  
  
    
    general_update()
end

keypressed.title = function(k)
    if k == "left" and title_select[1] > 1 then
        title_select[1] = title_select[1] - 1
    elseif k == "right" and title_select[1] < 2 then
        title_select[1] = title_select[1] + 1
    end
    if k == "up" and title_select[2] > 1 then
        title_select[2] = title_select[2] - 1
    elseif k == "down" and title_select[2] < 2 then
        title_select[2] = title_select[2] + 1
    end

    if k == "x" or k == "return" then
       if title_select[2] == 2 then
            -- false reset
       elseif title_select[1] == 2 then
            -- settings, does not change mode
       else

            change_mode("walking")
       end
    end

    general_keypressed(k)
end