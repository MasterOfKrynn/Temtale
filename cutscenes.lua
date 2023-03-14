-- logic area

-- 2 counters for our use. unrelated.
cscounter = 0
cscounter2 = 0

cutcounter = 0
scene_number = 0
cutfn = {draw={},update={},keypressed={}}
cutscenes = { -- ordering
{"temtale", "scrollingintro", "dramascreen"},

}

function init.cutscenes()
    -- for possible use in other modes ?
    cscounter = 0

    cutcounter = cutcounter + 1
    increment_cutscene_number_mode()
end

function increment_cutscene_number_mode()
    scene_number = scene_number + 1
    local direct_to = cutscenes[cutcounter][scene_number]
    love.draw = cutfn.draw[direct_to]
    love.update = cutfn.update[direct_to]
    love.keypressed = cutfn.keypressed[direct_to]
end

function cutfn.update.general()
    cscounter = cscounter + 1
end






-- defining functions area
function cutfn.update.temtale()
    if cscounter == toseconds(4.25) then
        play_bgm(nil, "onceuponatime")

        -- 4 to 4.24 is nothing
    elseif cscounter > toseconds(4.25) then
        cscounter2 = cscounter2 + 1
    end

    cutfn.update.general()
end
function cutfn.draw.temtale()
    -- toseconds fount in util
    if cscounter < toseconds(4) then
        -- love.graphics.draw(src.spr.temtale, w/2-304, 80)
        love.graphics.draw(src.spr.temtale, w/2-304, h/2-40)

        -- 4 to 4.24 is nothing
    elseif cscounter > toseconds(4.25) then
        -- embed video
        -- scrolling text
    end
end
function cutfn.keypressed.temtale(k)
    --if k == "enter" or z then ??
end

function cutfn.update.scrollingintro()
    cutfn.update.general()
end
function cutfn.draw.scrollingintro()

end
function cutfn.keypressed.scrollingintro()

end