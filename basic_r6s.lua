EnablePrimaryMouseButtonEvents(true);
x = 0;
 
function OnEvent(event, arg)
	if IsKeyLockOn("numlock" )then
		if IsMouseButtonPressed(3)then
			repeat	
				if IsMouseButtonPressed(1) then
					repeat
						MoveMouseRelative(0,6)
						x = x + 1
						Sleep(1)
						if (x % 2) == 0 then
						  MoveMouseRelative(-1,0)
						end
					until not IsMouseButtonPressed(1)
					x = 0
				end				
			until not IsMouseButtonPressed(3)
		end		
	end
end
