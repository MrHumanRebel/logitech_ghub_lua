EnablePrimaryMouseButtonEvents(true);
--######################################

do
    local function busyloop(final_ctr)
        final_ctr = math.floor(final_ctr)
        local ctr, prev_ms, ms0, ctr0 = 0

        while ctr ~= final_ctr do
            local ms = GetRunningTime()

            if prev_ms and ms ~= prev_ms then
                if not ms0 then
                    ms0, ctr0 = ms, ctr
                elseif final_ctr < 0 and ms - ms0 > 500 then
                    return (ctr - ctr0) / (ms - ms0)
                end
            end

            prev_ms = ms
            ctr = ctr + 1
        end
    end

    local coefficient = busyloop(-1)

    function FastSleep(ms)
        return busyloop(ms * coefficient)
    end
end

--######################################

mod = "alt"
mod2 = "ctrl"
mod3 = "scrolllock"

--######################################

r = {
    amaru = {-1, 4}, ash = {-1, 4}, ace = {-1, 3},
    alibi = {0, 3}, aruni = {0, 2}, azami = {-1, 2},
    blackbeard = {1, 0}, brava = {0, 1}, buck = {-1, 3},
    bandit = {0, 4},
    capitao = {0, 2}, dokka = {0, 0},
    castle = {0, 0}, caveira = {0, 0}, clash = {-1, 1},
    doc = {-1, 2},
    echo = {-1, 2}, ela = {1, 4},
    finka = {-1, 5}, flores = {0, 1}, fuze = {-1, 3},
    fenrir = {0, 3}, frost = {0, 1},
    glaz = {0, -1}, gridlock = {-1, 3}, grim = {-1, 1},
    goyo = {-1, 5},
    hibana = {-1, 3},
    iana = {-1, 1}, iq = {-1, 1},
    jackal = {-1, 5},
    jager = {-1, 3},
    kali = {-1, 1},
    kaid = {0, 3}, kapkan = {-1, 3},
    lion = {0, 3},
    lesion = {0, 5},
    maverick = {-1, 2},
    maestro = {0, 3}, melusi = {-1, 2}, mira = {-1, 5}, mozzie = {0, 2}, mute = {0, 3},
    nokk = {0, 4}, nomad = {-1, 3},
    osa = {2, 0},
    oryx = {0, 4},
    pulse = {-1, 0},
    rook = {-1, 3}, ram = {-1, 3},
    sens = {0, 2}, sledge = {1, 1},
    smoke = {1, 4}, solis = {0, 2},
    thatcher = {-1, 4}, thermite = {1, 3}, twitch = {-1, 8},
    tachanka = {1, 0}, thorn = {0, 2}, thunder = {-1, 4},
    valkyrie = {0, 2}, vigil = {-1, 3},
    ying = {-1, 3},
    zero = {-1, 2}, zofia = {0, 3},
    wamai = {0, 3}, warden = {-1, 2}
}


-- Operators below are in order from left to right
atts = {"sledge", "thatcher", "ash", "thermite", "twitch", "montagne", "glaz", "fuze", "blitz", "iq", "buck", "blackbeard", "capitao", "hibana", "jackal", "ying", "zofia", "dokkaebi", "lion", "finka", "maverick", "nomad", "gridlock", "nokk", "amaru", "kali", "iana", "ace", "zero", "flores", "osa", "sens", "grim", "brava", "ram"}
deffs = {"smoke", "mute", "castle", "pulse", "doc", "rook", "kapkan", "tachanka", "jager", "bandit", "frost", "valkyrie", "caveira", "echo", "mira", "lesion", "ela", "vigil", "maestro", "alibi", "clash", "kaid", "mozzie", "warden", "goyo", "wamai", "oryx", "melusi", "aruni", "thunderbird", "thorn", "azami", "solis", "fenrir"}
 
--selector_box_size = {2038, 7653} -- Samsung
selector_box_size = {4194, 7458} -- G14

--up_left = {17173, 12937} --Samsung
up_left = {1601, 13039} --G14

--######################################

function OperatorSelector(operators)
    local x, y = GetMousePosition()
    
    OutputLogMessage(x .. " Currently \n")
    OutputLogMessage(y .. " Currently \n")

    local rows = 5  -- Number of rows of operators on the screen
    local cols = 7  -- Number of columns of operators on the screen

    local last_row_operators = #operators % cols
    local cols_last_row = last_row_operators > 0 and last_row_operators or cols

    local vertical_control, horizontal_control = 0, 0

    for i, operator in ipairs(operators) do
        local operator_index = i - 1
        local row = operator_index // cols
        local col = operator_index % cols

        if row == rows - 1 and col >= cols_last_row then
            col = cols_last_row - 1
        end

        local selector_x = up_left[1] + col * selector_box_size[1]
        local selector_y = up_left[2] + row * selector_box_size[2]

        if x >= selector_x and x <= selector_x + selector_box_size[1] and y >= selector_y and y <= selector_y + selector_box_size[2] then
            vertical_control, horizontal_control = r[operator][1], r[operator][2]
            OutputLogMessage(operator .. "\n")
            OutputLogMessage(vertical_control .. "\n")
            OutputLogMessage(horizontal_control .. "\n")
            break
        end
    end

    return vertical_control, horizontal_control
end

function OnEvent(event, arg)
    local horizontal_counter = 0
    local vertical_counter = 0

    if IsModifierPressed(mod) and IsModifierPressed(mod2) then
        if IsMouseButtonPressed(1) then
            vertical_control, horizontal_control = OperatorSelector(atts)
        elseif IsMouseButtonPressed(3) then
            vertical_control, horizontal_control = OperatorSelector(deffs)
        end
    end

    if IsKeyLockOn(mod3) then
        while IsMouseButtonPressed(3) do
            if IsMouseButtonPressed(1) then
                repeat
                    FastSleep(8) -- In milliseconds
                    if horizontal_counter > 5 then -- Prevent if tipping
                      MoveMouseRelative(0, horizontal_control)
                    end
                    if vertical_counter % 2 == 0 then -- Just slight control
                        MoveMouseRelative(vertical_control, 0)
                    end
                    horizontal_counter = horizontal_counter + 1
                    vertical_counter = vertical_counter + 0.25
                until not IsMouseButtonPressed(1)
                horizontal_counter = 0
                vertical_counter = 0
            end
        end
    end
end
