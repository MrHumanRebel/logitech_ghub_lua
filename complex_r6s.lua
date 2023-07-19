EnablePrimaryMouseButtonEvents(true);
r = {} -- vertical_control, horizontal_control
--######################################

attacker = "Hibana"
defender = "Rook"

--######################################
r["Amaru"] = {-1,4}; r["Ash"] = {-1,7}; r["Blackbeard"] = {-1,4}; r["Brava"] = {-1,4}; r["Buck"] = {-1,4}; r["Capitao"] = {0,5}; r["Dokkaebi"] = {-1,4}
r["Finka"] = {-1,4}; r["Flores"] = {-1,4}; r["Fuze"] = {-1,4}; r["Glaz"] = {-1,4}; r["Gridlock"] = {-1,4}; r["Grim"] = {-1,4}; r["Hibana"] = {-1,7}
r["Iana"] = {-1,4}; r["IQ"] = {-1,4}; r["Jackal"] = {-1,4}; r["Kali"] = {-1,4}; r["Lion"] = {-1,4}; r["Maverick"] = {-1,5}; r["Nokk"] = {-1,4}
r["Nomad"] = {-1,4}; r["Osa"] = {-1,4}; r["Sens"] = {-1,4}; r["Sledge"] = {-1,4}; r["Thatcher"] = {-1,4}; r["Thermite"] = {-1,4}; r["Twitch"] = {-1,10}
r["Ying"] = {-1,4}; r["Zero"] = {-1,4}; r["Zofia"] = {-1,4}

r["Alibi"] = {-1,4}; r["Aruni"] = {-1,4}; r["Azami"] = {-1,4}; r["Bandit"] = {0,6}; r["Castle"] = {-1,4}; r["Caveira"] = {-1,4}; r["Clash"] = {-1,4}
r["Doc"] = {-1,4}; r["Echo"] = {-1,4}; r["Ela"] = {-1,4}; r["Fenrir"] = {-1,4}; r["Frost"] = {-1,4}; r["Goyo"] = {-1,4}; r["Jager"] = {-1,4}
r["Kaid"] = {-1,4}; r["Kapkan"] = {-1,4}; r["Lesion"] = {-1,4}; r["Maestro"] = {-1,4}; r["Melusi"] = {-1,4}; r["Mira"] = {1,8}; r["Mozzie"] = {-1,4}
r["Mute"] = {-1,4}; r["Oryx"] = {-1,4}; r["Pulse"] = {-1,4}; r["Rook"] = {-1,6}; r["Smoke"] = {-1,4}; r["Solis"] = {-1,4}; r["Tachanka"] = {-1,4}
r["Thorn"] = {-1,4}; r["Thunderbird"] = {-1,4}; r["Valkyrie"] = {-1,4}; r["Vigil"] = {-1,4}; r["Wamai"] = {-1,4}; r["Warden"] = {-1,4}

function OnEvent(event, arg)
      counter = 1;
	if IsModifierPressed("alt") and IsMouseButtonPressed(1) then
         operator = attacker
         vertical_control = r[operator][1]
         horizontal_control = r[operator][2]
         OutputLogMessage(operator .. "\n")
	end
	if IsModifierPressed("alt") and IsMouseButtonPressed(3)then
         operator = defender
         vertical_control = r[operator][1]
         horizontal_control = r[operator][2]
         OutputLogMessage(operator .. "\n")
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
