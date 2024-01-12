EnablePrimaryMouseButtonEvents(true);
--######################################

--topLeftCorner = {17173, 12937} --Samsung
--topLeftCorner = {1633, 20270} --G14
topLeftCorner = {9450, 18707} --LG

--selectorBoxSize = {(14341-topLeftCorner[1]), (5521-topLeftCorner[2])} -- Samsung
--selectorBoxSize = {(14341-topLeftCorner[1]), (5521-topLeftCorner[2])} -- G14
selectorBoxSize = {(12011-topLeftCorner[1]), (25813-topLeftCorner[2])} -- LG

--######################################

recoilpresets = {
    {description = "sledge", strength = 8, horizontalstrength = 1, duration = 2550},--1.5,comp,vertgrip
    {description = "thatcher", strength = 9, horizontalstrength = 0, duration = 2400},--1.5,comp,vertgrip
    {description = "ash", strength = 8, horizontalstrength = -1, duration = 2100},--holo,comp,vert
    {description = "thermite", strength = 8, horizontalstrength = 1, duration = 2480},--1.5,comp,vergrip
    {description = "twitch", strength = 20, horizontalstrength = -1, duration = 1558},--1.5,comp
    {description = "montagne", strength = 0, horizontalstrength = 0, duration = 0},
    {description = "glaz", strength = 0, horizontalstrength = 0, duration = 0},
    {description = "fuze", strength = 15, horizontalstrength = -1, duration = 2100},--2x,comp,vertgrip
    {description = "blitz", strength = 0, horizontalstrength = 0, duration = 0},
    {description = "iq", strength = 12, horizontalstrength = 1, duration = 2300},
    {description = "buck", strength = 11, horizontalstrength = 0, duration = 2000},
    {description = "blackbeard", strength = 4, horizontalstrength = 1, duration = 1700},
    {description = "capitao", strength = 11, horizontalstrength = 0, duration = 2580},--2x,comp,vert
    {description = "hibana", strength = 16, horizontalstrength = -1, duration = 1400},
    {description = "jackal", strength = 13, horizontalstrength = -1, duration = 2300},--1.5,comp ,vertgrip
    {description = "ying", strength = 11, horizontalstrength = 0, duration = 7500},--2x,comp,vertgrip
    {description = "zofia", strength = 14, horizontalstrength = 1, duration = 2600},--2x,comp,vertgrip
    {description = "dokkaebi", strength = 0, horizontalstrength = 0, duration = 0},--reddot,vertgrip
    {description = "lion", strength = 9, horizontalstrength = 0, duration = 4230},--1.5,suppressor,vertgrip
    {description = "finka", strength = 12, horizontalstrength = -1, duration = 2620}, --1.5,extended barrel,vertgrip
    {description = "maverick", strength = 11, horizontalstrength = -1, duration = 2400},--2x,flash,vertgrip
    {description = "nomad", strength = 11, horizontalstrength = -1, duration = 5000},
    {description = "gridlock", strength = 12, horizontalstrength = -1, duration = 2265},--2x,comp,vertgrip
    {description = "nokk", strength = 8, horizontalstrength = 0, duration = 5000},
    {description = "amaru", strength = 13, horizontalstrength = -1, duration = 3550}, --1.5,silence,forgrip
    {description = "kali", strength = 0, horizontalstrength = 0, duration = 0},--reflex,extended barrel 
    {description = "iana", strength = 5, horizontalstrength = -1, duration = 5200},
    {description = "ace", strength = 12, horizontalstrength = -1, duration = 2080},--1.5,suppressor,vertgrip
    {description = "zero", strength = 15, horizontalstrength = -1, duration = 1860}, --2x,suppressor,vertgrip
    {description = "flores", strength = 11, horizontalstrength = 0, duration = 5800},
    {description = "osa", strength = 7, horizontalstrength = 2, duration = 2630},--1.5,suppressor,vertgrip
    {description = "sens", strength = 16, horizontalstrength = 0, duration = 5000},
    {description = "grim", strength = 9, horizontalstrength = 0, duration = 2600},--1.5,comp,vertgrip
    {description = "brava", strength = 9, horizontalstrength = 0, duration = 5800},
    {description = "ram", strength = 17, horizontalstrength = -1, duration = 5000},
    --######################################
    {description = "smoke", strength = 11, horizontalstrength = 0, duration = 5000},
    {description = "mute", strength = 7, horizontalstrength = 0, duration = 5500},
    {description = "castle", strength = 6, horizontalstrength = 0, duration = 2540}, --1.5,comp,vertgrip
    {description = "pulse", strength = 6, horizontalstrength = 0, duration = 5800},
    {description = "doc", strength = 11, horizontalstrength = 0, duration = 2260}, --1.5,comp,vertgrip 
    {description = "rook", strength = 11, horizontalstrength = 0, duration = 2260}, --1.5,comp,vertgrip 
    {description = "kapkan", strength = 6, horizontalstrength = 0, duration = 5000},
    {description = "tachanka 9x19vsn", strength = 10, horizontalstrength = -1, duration = 2500},-- 2x,flash,vert
    {description = "tachanka dp27", strength = 3, horizontalstrength = 0, duration = 7950}, -- reddot
    {description = "jager", strength = 7, horizontalstrength = 0, duration = 5800},
    {description = "bandit", strength = 8, horizontalstrength = 0, duration = 5800},
    {description = "frost", strength = 6, horizontalstrength = 0, duration = 5800},
    {description = "valkyrie", strength = 6, horizontalstrength = 0, duration = 5800},
    {description = "caveira", strength = 4, horizontalstrength = 0, duration = 3260}, --holo,comp
    {description = "echo", strength = 10, horizontalstrength = -1, duration = 5800},
    {description = "mira", strength = 8, horizontalstrength = 0, duration = 5800},
    {description = "lesion", strength = 7, horizontalstrength = 0, duration = 5000},
    {description = "ela", strength = 9, horizontalstrength = 1, duration = 2210}, --reddot,comp,vertgrip
    {description = "vigil", strength = 6, horizontalstrength = 0, duration = 5000},
    {description = "maestro", strength = 8, horizontalstrength = 0, duration = 5400},--reddot,comp,vertgrip
    {description = "maestro acs", strength = 5, horizontalstrength = 0, duration = 6200},--1.5,vertgrip
    {description = "alibi", strength = 7, horizontalstrength = 0, duration = 5800},
    {description = "clash sps", strength = 7, horizontalstrength = 0, duration = 1200},--reddot,comp,laser
    {description = "kaid", strength = 5, horizontalstrength = 0, duration = 2860},--reddot,extend barrel,vertgrip
    {description = "mozzie commando 9", strength = 6, horizontalstrength = 0, duration = 5800},
    {description = "mozzie p10", strength = 11, horizontalstrength = 0, duration = 5800},
    {description = "warden", strength = 10, horizontalstrength = 0, duration = 2100},--1.5,comp ,vertgrip
    {description = "goyo", strength = 14, horizontalstrength = 0, duration = 1250}, --1.5,extended,vert 
    {description = "wamai aug a2", strength = 8, horizontalstrength = 0, duration = 5000},
    {description = "wamai mp5k", strength = 13, horizontalstrength = 0, duration = 5000},
    {description = "oryx", strength = 7, horizontalstrength = 0, duration = 2080}, --reddot,extended barrel,vertgrip
    {description = "melusi", strength = 6, horizontalstrength = 0, duration = 5800},
    {description = "aruni", strength = 7, horizontalstrength = 0, duration = 5800},
    {description = "thunderbird", strength = 8, horizontalstrength = 0, duration = 5000},
    {description = "thorn", strength = 10, horizontalstrength = 0, duration = 1960}, --1.5,extended barrel,vert grip
    {description = "azami", strength = 6, horizontalstrength = 0, duration = 2420},--holo,comp,vertgrip
    {description = "solis", strength = 8, horizontalstrength = 0, duration = 5000},
    {description = "fenrir", strength = 8, horizontalstrength = 0, duration = 2010}, --reddot,extended barrel
    {description = "tubaro", strength = 6, horizontalstrength = 0, duration = 2200},--reddot,extended barrel ,forgrip
}
--######################################

-- Operators below are in order from left to right
atts = {"sledge", "thatcher", "ash", "thermite", "twitch", "montagne", "glaz", "fuze", "blitz", "iq", "buck", "blackbeard", "capitao", "hibana", "jackal", "ying", "zofia", "dokkaebi", "lion", "finka", "maverick", "nomad", "gridlock", "nokk", "amaru", "kali", "iana", "ace", "zero", "flores", "osa", "sens", "grim", "brava", "ram"}
deffs = {"smoke", "mute", "castle", "pulse", "doc", "rook", "kapkan", "tachanka", "jager", "bandit", "frost", "valkyrie", "caveira", "echo", "mira", "lesion", "ela", "vigil", "maestro", "alibi", "clash", "kaid", "mozzie", "warden", "goyo", "wamai", "oryx", "melusi", "aruni", "thunderbird", "thorn", "azami", "solis", "fenrir"}
 
--######################################

local recoilTimer = 0
local startTime = 0
local selectedOperator = nil

--######################################
-- Operator Selector Function
function OperatorSelector(operators)
    local x, y = GetMousePosition()
    selectedOperator = nil

    OutputLogMessage(x .. " :X \n")
    OutputLogMessage(y .. " :Y \n")

    local rows = 5  -- Number of rows of operators on the screen
    local cols = 7  -- Number of columns of operators on the screen

    local last_row_operators = #operators % cols
    local cols_last_row = last_row_operators > 0 and last_row_operators or cols

    for i, operator in ipairs(operators) do
        local operator_index = i - 1
        local row = operator_index // cols
        local col = operator_index % cols

        if row == rows - 1 and col >= cols_last_row then
            col = cols_last_row - 1
        end

        local selector_x = topLeftCorner[1] + (selectorBoxSize[1] * col)
        local selector_y = topLeftCorner[2] + (selectorBoxSize[2] * row)

        if x >= selector_x and x <= selector_x + selectorBoxSize[1] and y >= selector_y and y <= selector_y + selectorBoxSize[2] then
            if operator.description == selectedOperator then
                selectedOperator = recoilpresets[i]
                OutputLogMessage(selectedOperator.description .. "\t")
                OutputLogMessage(selectedOperator.strength .. "\t")
                OutputLogMessage(selectedOperator.horizontalstrength .. "\t")
                OutputLogMessage(selectedOperator.duration .. "\n")
                return selectedOperator
            end
        end
    end
    return nil
end

--######################################

function OnEvent(event, arg)
    if IsModifierPressed("alt") and IsModifierPressed("ctrl") then
        if IsMouseButtonPressed(1) then
            selectedOperator = OperatorSelector(atts)
        elseif IsMouseButtonPressed(3) then
            selectedOperator = OperatorSelector(deffs)
        end
    end

    if selectedOperator then
        local adjustedStrength = selectedOperator.strength
        local horizontalStrength = selectedOperator.horizontalstrength
        local duration = selectedOperator.duration

        -- Adjust strength based on scope multiplier
        local selectedScopeMultiplier = "+2"  -- Assuming a default value; adjust as needed
        if selectedScopeMultiplier == "+2" then
            adjustedStrength = adjustedStrength + 2
        elseif selectedScopeMultiplier == "+4" then
            adjustedStrength = adjustedStrength + 4
        elseif selectedScopeMultiplier == "+6" then
            adjustedStrength = adjustedStrength + 6
        end

        if IsKeyLockOn("scrolllock") then
            while IsMouseButtonPressed(3) do
                if IsMouseButtonPressed(1) then
                    local recoilDuration = duration
                    startTime = GetRunningTime()
                    local endTime = startTime + recoilDuration
                    repeat
                        MoveMouseRelative(horizontalStrength, adjustedStrength)
                        Sleep(14)
                        recoilTimer = GetRunningTime() - startTime
                    until not IsMouseButtonPressed(1) or recoilTimer >= recoilDuration
                    recoilTimer = 0
                end
            end
        end
    end
end
