EnablePrimaryMouseButtonEvents(true);
r = {} -- vertical_control, horizontal_control
--######################################

attacker = "hibana"
defender = "rook"

--######################################
r["amaru"] = {-1,4}; r["ash"] = {-1,7}; r["blackbeard"] = {-1,4}; r["brava"] = {-1,4}; r["buck"] = {-1,4}; r["capitao"] = {0,5}; r["dokkaebi"] = {-1,4}
r["finka"] = {-1,4}; r["flores"] = {-1,4}; r["fuze"] = {-1,4}; r["glaz"] = {-1,4}; r["gridlock"] = {-1,4}; r["grim"] = {-1,4}; r["hibana"] = {-1,7}
r["iana"] = {-1,4}; r["iq"] = {-1,4}; r["jackal"] = {-1,4}; r["kali"] = {-1,4}; r["lion"] = {-1,4}; r["maverick"] = {-1,5}; r["nokk"] = {-1,4}
r["nomad"] = {-1,4}; r["osa"] = {-1,4}; r["sens"] = {-1,4}; r["sledge"] = {-1,4}; r["thatcher"] = {-1,4}; r["thermite"] = {-1,4}; r["twitch"] = {-1,10}
r["ying"] = {-1,4}; r["zero"] = {-1,4}; r["zofia"] = {-1,4}

r["alibi"] = {-1,4}; r["aruni"] = {-1,4}; r["azami"] = {-1,4}; r["bandit"] = {0,6}; r["castle"] = {-1,4}; r["caveira"] = {-1,4}; r["clash"] = {-1,4}
r["doc"] = {-1,4}; r["echo"] = {-1,4}; r["ela"] = {-1,4}; r["fenrir"] = {-1,4}; r["frost"] = {-1,4}; r["goyo"] = {-1,4}; r["jager"] = {-1,4}
r["kaid"] = {-1,4}; r["kapkan"] = {-1,4}; r["lesion"] = {-1,4}; r["maestro"] = {-1,4}; r["melusi"] = {-1,4}; r["mira"] = {1,8}; r["mozzie"] = {-1,4}
r["mute"] = {-1,4}; r["oryx"] = {-1,4}; r["pulse"] = {-1,4}; r["rook"] = {-1,6}; r["smoke"] = {-1,4}; r["solis"] = {-1,4}; r["tachanka"] = {-1,4}
r["thorn"] = {-1,4}; r["thunderbird"] = {-1,4}; r["valkyrie"] = {-1,4}; r["vigil"] = {-1,4}; r["wamai"] = {-1,4}; r["warden"] = {-1,4}
--######################################

mod = "alt"
mod2 = "ctrl"

function OperatorSelector(operator)
  vertical_control = r[operator][1]
  horizontal_control = r[operator][2]
  OutputLogMessage(operator .. "\n")
  OutputLogMessage(vertical_control .. "\n")
  OutputLogMessage(horizontal_control .. "\n")
  return vertical_control, horizontal_control
end

function OnEvent(event, arg)
      counter = 1;
	if IsModifierPressed(mod) and IsModifierPressed(mod2) and IsMouseButtonPressed(1) then
         vertical_control, horizontal_control = OperatorSelector(attacker)
	end
	if IsModifierPressed(mod) and IsModifierPressed(mod2) and IsMouseButtonPressed(3)then
         vertical_control, horizontal_control = OperatorSelector(defender)
	end
	if IsKeyLockOn("numlock") then
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
