EnablePrimaryMouseButtonEvents(true);
--######################################

mod = "alt"
mod2 = "ctrl"
mod3 = "scrolllock"

--######################################

r = {} -- vertical_control, horizontal_control
r["amaru"] = {-1,7}; r["ash"] = {-1,5}; r["ace"] = {-1,4};
r["alibi"] = {0,4}; r["aruni"] = {0,3}; r["azami"] = {-1,3};
r["blackbeard"] = {1,1}; r["brava"] = {0,2}; r["buck"] = {-1,4};
r["bandit"] = {0,5};
r["capitao"] = {0,3}; r["dokka"] = {0,1};
r["castle"] = {0,1}; r["caveira"] = {0,1}; r["clash"] = {-1,2};
r["doc"] = {-1,3};
r["echo"] = {-1,3}; r["ela"] = {1,5};
r["finka"] = {-1,6}; r["flores"] = {0,2}; r["fuze"] = {-1,7};
r["fenrir"] = {0,4}; r["frost"] = {0,2}; 
r["glaz"] = {0,0}; r["gridlock"] = {-1,6}; r["grim"] = {-1,2};
r["goyo"] = {-1,6};
r["hibana"] = {-1,6};
r["iana"] = {-1,2}; r["iq"] = {-1,2};
r["jackal"] = {-1,6};
r["jager"] = {-1,4};
r["kali"] = {-1,2};
r["kaid"] = {0,4}; r["kapkan"] = {-1,4};
r["lion"] = {0,4}; 
r["lesion"] = {0,6};
r["maverick"] = {-1,3};
r["maestro"] = {0,5}; r["melusi"] = {-1,3}; r["mira"] = {-1,6}; r["mozzie"] = {0,3}; r["mute"] = {0,4};
r["nokk"] = {0,5}; r["nomad"] = {-1,4}; 
r["osa"] = {2,1};
r["oryx"] = {0,5};
r["pulse"] = {-1,1};
r["rook"] = {-1,4}; r["ram"] = {-1,4};
r["sens"] = {0,3}; r["sledge"] = {1,2};
r["smoke"] = {1,5}; r["solis"] = {0,3};
r["thatcher"] = {-1,5}; r["thermite"] = {1,4}; r["twitch"] = {-1,9};
r["tachanka"] = {1,1}; r["thorn"] = {0,3}; r["thunder"] = {-1,5};
r["valkyrie"] = {0,3}; r["vigil"] = {-1,4};
r["ying"] = {-1,4};
r["zero"] = {-1,3}; r["zofia"] = {0,4};  
r["wamai"] = {0,4}; r["warden"] = {-1,3};


-- Operators below are in order from left to right
atts = {"sledge", "thatcher", "ash", "thermite", "twitch", "montagne", "glaz", "fuze", "blitz", "iq", "buck", "blackbeard", "capitao", "hibana", "jackal", "ying", "zofia", "dokkaebi", "lion", "finka", "maverick", "nomad", "gridlock", "nokk", "amaru", "kali", "iana", "ace", "zero", "flores", "osa", "sens", "grim", "brava", "ram"}
deffs = {"smoke", "mute", "castle", "pulse", "doc", "rook", "kapkan", "tachanka", "jager", "bandit", "frost", "valkyrie", "caveira", "echo", "mira", "lesion", "ela", "vigil", "maestro", "alibi", "clash", "kaid", "mozzie", "warden", "goyo", "wamai", "oryx", "melusi", "aruni", "thunderbird", "thorn", "azami", "solis", "fenrir"}
 
selector_box_size = {2038, 7653} --xy "Each operator has this size of selector box"
-- Display coordinates
up_left = {17173, 12937}
--up_right = {31530, 13119} -- Not needed anymore
--down_left = {17173, 51505}
--down_right = {31530, 51566}

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
