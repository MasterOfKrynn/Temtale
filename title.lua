title_select = {1, 1}

title_mode = "default"

init.title = function(m)
    
end

draw.title = function()
    love.graphics.scale(1,1)
    love.graphics.setColor(1,1,1)
    
    --love.graphics.scale(2,2)
    
    if title_mode == "default" then
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
    elseif title_mode == "settings" then
        -- text at bottom: "The current version of Temtale only supports English :C"
    elseif title_mode == "reset" then

    end


    love.graphics.setColor(1,1,1)
end

update.title = function()
  
  
    
    general_update()
end

keypressed.title = function(k)
    if title_mode == "default" then
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

        -- fn entering, found in util
        if entering(k) then
            if title_select[2] == 2 then
                -- false reset
                title_mode = "reset"
            elseif title_select[1] == 2 then
                title_mode = "settings"
                -- SFX too!!
                play_bgm(nil, "uwasotemperate")
            else

                change_mode("walking")
            end
        end
    elseif title_mode == "settings" then
        --buttons: EXIT, 
        
         
    elseif title_mode == "reset" then
        -- "ARE YOU SURE YOU WANT TO RESET? XD"

        -- chosen name ??
    end

    general_keypressed(k)
end