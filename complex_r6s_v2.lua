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
    {description = "sledge", strength = 2, horizontalstrength = 1, duration = 2550},
    {description = "thatcher", strength = 2, horizontalstrength = 0, duration = 2400},
    {description = "ash", strength = 2, horizontalstrength = -1, duration = 2100},
    {description = "thermite", strength = 2, horizontalstrength = 1, duration = 2480},
    {description = "twitch", strength = 5, horizontalstrength = -1, duration = 1558},
    {description = "montagne", strength = 0, horizontalstrength = 0, duration = 0},
    {description = "glaz", strength = 0, horizontalstrength = 0, duration = 0},
    {description = "fuze", strength = 4, horizontalstrength = -1, duration = 2100},
    {description = "blitz", strength = 0, horizontalstrength = 0, duration = 0},
    {description = "iq", strength = 3, horizontalstrength = 1, duration = 2300},
    {description = "buck", strength = 3, horizontalstrength = 0, duration = 2000},
    {description = "blackbeard", strength = 1, horizontalstrength = 1, duration = 1700},
    {description = "capitao", strength = 3, horizontalstrength = 0, duration = 2580},
    {description = "hibana", strength = 4, horizontalstrength = -1, duration = 1400},
    {description = "jackal", strength = 4, horizontalstrength = -1, duration = 2300},
    {description = "ying", strength = 3, horizontalstrength = 0, duration = 7500},
    {description = "zofia", strength = 4, horizontalstrength = 1, duration = 2600},
    {description = "dokkaebi", strength = 0, horizontalstrength = 0, duration = 0},
    {description = "lion", strength = 2, horizontalstrength = 0, duration = 4230},
    {description = "finka", strength = 3, horizontalstrength = -1, duration = 2620},
    {description = "maverick", strength = 3, horizontalstrength = -1, duration = 2400},
    {description = "nomad", strength = 3, horizontalstrength = -1, duration = 5000},
    {description = "gridlock", strength = 3, horizontalstrength = -1, duration = 2265},
    {description = "nokk", strength = 2, horizontalstrength = 0, duration = 5000},
    {description = "amaru", strength = 4, horizontalstrength = -1, duration = 3550},
    {description = "kali", strength = 0, horizontalstrength = 0, duration = 0},
    {description = "iana", strength = 1, horizontalstrength = -1, duration = 5200},
    {description = "ace", strength = 3, horizontalstrength = -1, duration = 2080},
    {description = "zero", strength = 4, horizontalstrength = -1, duration = 1860},
    {description = "flores", strength = 3, horizontalstrength = 0, duration = 5800},
    {description = "osa", strength = 2, horizontalstrength = 2, duration = 2630},
    {description = "sens", strength = 4, horizontalstrength = 0, duration = 5000},
    {description = "grim", strength = 2, horizontalstrength = 0, duration = 2600},
    {description = "brava", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "ram", strength = 4, horizontalstrength = -1, duration = 5000},
    --######################################
    {description = "smoke", strength = 3, horizontalstrength = 0, duration = 5000},
    {description = "mute", strength = 2, horizontalstrength = 0, duration = 5500},
    {description = "castle", strength = 2, horizontalstrength = 0, duration = 2540},
    {description = "pulse", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "doc", strength = 3, horizontalstrength = 0, duration = 2260},
    {description = "rook", strength = 3, horizontalstrength = 0, duration = 2260},
    {description = "kapkan", strength = 2, horizontalstrength = 0, duration = 5000},
    {description = "tachanka 9x19vsn", strength = 2, horizontalstrength = -1, duration = 2500},
    {description = "tachanka dp27", strength = 1, horizontalstrength = 0, duration = 7950},
    {description = "jager", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "bandit", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "frost", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "valkyrie", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "caveira", strength = 1, horizontalstrength = 0, duration = 3260},
    {description = "echo", strength = 2, horizontalstrength = -1, duration = 5800},
    {description = "mira", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "lesion", strength = 2, horizontalstrength = 0, duration = 5000},
    {description = "ela", strength = 2, horizontalstrength = 1, duration = 2210},
    {description = "vigil", strength = 2, horizontalstrength = 0, duration = 5000},
    {description = "maestro", strength = 2, horizontalstrength = 0, duration = 5400},
    {description = "maestro acs", strength = 1, horizontalstrength = 0, duration = 6200},
    {description = "alibi", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "clash sps", strength = 2, horizontalstrength = 0, duration = 1200},
    {description = "kaid", strength = 1, horizontalstrength = 0, duration = 2860},
    {description = "mozzie commando 9", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "mozzie p10", strength = 3, horizontalstrength = 0, duration = 5800},
    {description = "warden", strength = 3, horizontalstrength = 0, duration = 2100},
    {description = "goyo", strength = 4, horizontalstrength = 0, duration = 1250},
    {description = "wamai aug a2", strength = 2, horizontalstrength = 0, duration = 5000},
    {description = "wamai mp5k", strength = 3, horizontalstrength = 0, duration = 5000},
    {description = "oryx", strength = 2, horizontalstrength = 0, duration = 2080},
    {description = "melusi", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "aruni", strength = 2, horizontalstrength = 0, duration = 5800},
    {description = "thunderbird", strength = 2, horizontalstrength = 0, duration = 5000},
    {description = "thorn", strength = 3, horizontalstrength = 0, duration = 1960},
    {description = "azami", strength = 1, horizontalstrength = 0, duration = 2420},
    {description = "solis", strength = 2, horizontalstrength = 0, duration = 5000},
    {description = "fenrir", strength = 2, horizontalstrength = 0, duration = 2010},
    {description = "tubaro", strength = 1, horizontalstrength = 0, duration = 2200},
}
--######################################

-- Operators below are in order from left to right
attackers = {"sledge", "thatcher", "ash", "thermite", "twitch", "montagne", "glaz", "fuze", "blitz", "iq", "buck", "blackbeard", "capitao", "hibana", "jackal", "ying", "zofia", "dokkaebi", "lion", "finka", "maverick", "nomad", "gridlock", "nokk", "amaru", "kali", "iana", "ace", "zero", "flores", "osa", "sens", "grim", "brava", "ram"}
defenders = {"smoke", "mute", "castle", "pulse", "doc", "rook", "kapkan", "tachanka", "jager", "bandit", "frost", "valkyrie", "caveira", "echo", "mira", "lesion", "ela", "vigil", "maestro", "alibi", "clash", "kaid", "mozzie", "warden", "goyo", "wamai", "oryx", "melusi", "aruni", "thunderbird", "thorn", "azami", "solis", "fenrir"}
 
--######################################

local recoilTimer = 0
local startTime = 0
local selectedOperator = nil

--######################################
-- Operator Selector Function
function OperatorSelector(operators)
    local x, y = GetMousePosition()
    selectedOperator = nil
    selectedRecoil = nil

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
            selectedOperator = operators[i]
            -- Find the recoil preset for the selected operator
            for j, recoilpreset in ipairs(recoilpresets) do
                if recoilpreset.description == selectedOperator then
                    selectedRecoil = recoilpreset
                    OutputLogMessage
                    (
                        "Operator: " .. selectedRecoil.description .. "\n" ..
                        "Strength: " .. selectedRecoil.strength .. "\n" ..
                        "Horizontal Strength: " .. selectedRecoil.horizontalstrength .. "\n" ..
                        "Duration: " .. selectedRecoil.duration .. "\n"
                    )
                    break
                end
            end
            return selectedRecoil
        end
    end
    return nil
end

--######################################

function OnEvent(event, arg)
    if IsModifierPressed("alt") and IsModifierPressed("ctrl") then
        if IsMouseButtonPressed(1) then
            selectedOperator = OperatorSelector(attackers)
        elseif IsMouseButtonPressed(3) then
            selectedOperator = OperatorSelector(defenders)
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