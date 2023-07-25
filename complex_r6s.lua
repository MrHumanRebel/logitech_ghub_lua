EnablePrimaryMouseButtonEvents(true);
r = {} -- vertical_control, horizontal_control
--######################################
attacker = "hibana"
defender = "fenrir"
--######################################
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
r["hibana"] = {-1,7};
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
r["rook"] = {-1,6};
r["sens"] = {0,5}; r["sledge"] = {1,4};
r["smoke"] = {1,7}; r["solis"] = {0,5};
r["thatcher"] = {-1,7}; r["thermite"] = {1,6}; r["twitch"] = {-1,10};
r["tachanka"] = {1,3}; r["thorn"] = {0,5}; r["thunder"] = {-1,7};
r["valkyrie"] = {0,5}; r["vigil"] = {-1,6};
r["ying"] = {-1,6};
r["zero"] = {-1,5}; r["zofia"] = {0,6};  
r["wamai"] = {0,6}; r["warden"] = {-1,5};
--######################################

mod = "alt"
mod2 = "ctrl"
mod3 = "scrolllock"

--######################################
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
