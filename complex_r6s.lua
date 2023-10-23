EnablePrimaryMouseButtonEvents(true);
--######################################

mod = "alt"
mod2 = "ctrl"
mod3 = "scrolllock"

--######################################

r = {} -- vertical_control, horizontal_control
r["amaru"] = {-1,9}; r["ash"] = {-1,7}; r["ace"] = {-1,6};
r["alibi"] = {0,6}; r["aruni"] = {0,5}; r["azami"] = {-1,5};
r["blackbeard"] = {1,3}; r["brava"] = {0,4}; r["buck"] = {-1,6};
r["bandit"] = {0,7};
r["capitao"] = {0,5}; r["dokka"] = {0,3};
r["castle"] = {0,3}; r["caveira"] = {0,3}; r["clash"] = {-1,4};
r["doc"] = {-1,5};
r["echo"] = {-1,5}; r["ela"] = {1,7};
r["finka"] = {-1,8}; r["flores"] = {0,4}; r["fuze"] = {-1,9};
r["fenrir"] = {0,6}; r["frost"] = {0,4}; 
r["glaz"] = {0,0}; r["gridlock"] = {-1,8}; r["grim"] = {-1,4};
r["goyo"] = {-1,8};
r["hibana"] = {-1,8};
r["iana"] = {-1,4}; r["iq"] = {-1,4};
r["jackal"] = {-1,8};
r["jager"] = {-1,6};
r["kali"] = {-1,4};
r["kaid"] = {0,6}; r["kapkan"] = {-1,6};
r["lion"] = {0,6}; 
r["lesion"] = {0,8};
r["maverick"] = {-1,5};
r["maestro"] = {0,7}; r["melusi"] = {-1,5}; r["mira"] = {-1,8}; r["mozzie"] = {0,5}; r["mute"] = {0,6};
r["nokk"] = {0,7}; r["nomad"] = {-1,6}; 
r["osa"] = {2,3};
r["oryx"] = {0,7};
r["pulse"] = {-1,3};
r["rook"] = {-1,6}; r["ram"] = {-1,6};
r["sens"] = {0,5}; r["sledge"] = {1,4};
r["smoke"] = {1,7}; r["solis"] = {0,5};
r["thatcher"] = {-1,7}; r["thermite"] = {1,6}; r["twitch"] = {-1,11};
r["tachanka"] = {1,3}; r["thorn"] = {0,5}; r["thunder"] = {-1,7};
r["valkyrie"] = {0,5}; r["vigil"] = {-1,6};
r["ying"] = {-1,6};
r["zero"] = {-1,5}; r["zofia"] = {0,6};  
r["wamai"] = {0,6}; r["warden"] = {-1,5};

-- Operators below are in order from left to right
atts = {"sledge", "thatcher", "ash", "thermite", "twitch", "montagne", "glaz", "fuze", "blitz", "iq", "buck", "blackbeard", "capitao", "hibana", "jackal", "ying", "zofia", "dokkaebi", "lion", "finka", "maverick", "nomad", "gridlock", "nokk", "amaru", "kali", "iana", "ace", "zero", "flores", "osa", "sens", "grim", "brava", "ram"}
deffs = {"smoke", "mute", "castle", "pulse", "doc", "rook", "kapkan", "tachanka", "jager", "bandit", "frost", "valkyrie", "caveira", "echo", "mira", "lesion", "ela", "vigil", "maestro", "alibi", "clash", "kaid", "mozzie", "warden", "goyo", "wamai", "oryx", "melusi", "aruni", "thunderbird", "thorn", "azami", "solis", "fenrir"}
 
selector_box_size = {2038, 7653} --xy "Each operator has this size of selector box"
-- Display coordinates
up_left = {17173, 12937} --xy "Sledge from atts / Smoke from deffs"
up_right = {31530, 13119} --xy "Glaz from atts / Kapkan from deffs"
down_left = {17173, 51505} --xy "Zero from atts / Aruni from deffs"
down_right = {31530, 51566} --xy "Brava from atts / Fenrir from deffs"

--######################################

function OperatorSelector(operators)
    -- Select the appropriate operator based on mouse position, use selector_box_size and the display coordinates to navigate.
    x, y = GetMousePosition()
    OutputLogMessage(x .. "\n")
    OutputLogMessage(y .. "\n")

    rows = 5  -- Number of rows of operators on the screen
    cols = 7  -- Number of columns of operators on the screen

    -- Calculate the number of operators in the last row
    last_row_operators = #operators % cols

    -- Default values for vertical and horizontal control
    vertical_control, horizontal_control = 0, 0

    for i = 1, #operators do
        operator_index = i - 1
        row = operator_index // cols
        col = operator_index % cols

        -- Adjust the number of columns for the last row
        if row == rows - 1 and col >= last_row_operators then
            cols = last_row_operators
        end

        selector_x = up_left[1] + (col * selector_box_size[1])
        selector_y = up_left[2] + (row * selector_box_size[2])

        if x >= selector_x and x <= (selector_x + selector_box_size[1]) and y >= selector_y and y <= (selector_y + selector_box_size[2]) then
            operator = operators[i]
            vertical_control, horizontal_control = r[operator][1], r[operator][2]  -- Update the vertical and horizontal control values for the selected operator
            OutputLogMessage(operator .. "\n")
            OutputLogMessage(vertical_control .. "\n")
            OutputLogMessage(horizontal_control .. "\n")
            break  -- Exit the loop once an operator is found
        end
    end

    -- Return the vertical and horizontal control values for the selected operator
    return vertical_control, horizontal_control
end

function OnEvent(event, arg)
      counter = 1;
	if IsModifierPressed(mod) and IsModifierPressed(mod2) and IsMouseButtonPressed(1) then
         vertical_control, horizontal_control = OperatorSelector(atts)
	end
	if IsModifierPressed(mod) and IsModifierPressed(mod2) and IsMouseButtonPressed(3)then
         vertical_control, horizontal_control = OperatorSelector(deffs)
	end
	if IsKeyLockOn(mod3) then
		if IsMouseButtonPressed(3) then
			repeat	
				if IsMouseButtonPressed(1) then
					repeat
						MoveMouseRelative(0, horizontal_control)
						counter = counter + 1
						Sleep(1)
						if (counter % 2) == 0 then
							MoveMouseRelative(vertical_control, 0)
						end
					until not IsMouseButtonPressed(1)
					counter = 1
				end				
			until not IsMouseButtonPressed(3)
		end		
	end
end
