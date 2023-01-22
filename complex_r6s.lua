local r_p = {}
local r_o = r_p[o_s_a] or {}
local r_o = r_p[o_s_d] or {}
 
local o_s_a = "Zofia"
local n_o_s_a = {Zofia = "Ace", Zero = "Zofia", Ying = "Zero", Twitch = "Ying", Thermite = "Twitch", Thatcher = "Thermite", Sledge = "Thatcher", Sens = "Sledge", Osa = "Sens", Nomad = "Osa", Nokk = "Nomad", Maverick = "Nokk", Lion = "Maverick", Kali = "Lion", Jackal = "Kali", IQ = "Jackal", Iana = "IQ", Hibana = "Iana", Grim = "Hibana", Gridlock = "Grim", Glaz = "Gridlock", Fuze = "Glaz", Flores = "Fuze", Finka = "Flores", Dokkaebi = "Finka", Capitao = "Dokkaebi", Buck = "Capitao", Blackbeard = "Buck", Ash = "Blackbeard", Amaru = "Ash", Ace = "Amaru"}
 
local o_s_d = "Warden"
local n_o_s_d = {Warden = "Alibi", Wamai = "Warden", Vigil = "Wamai", Valkyrie = "Vigil", Thunderbird = "Valkyrie", Thorn = "Thunderbird", Tachanka = "Thorn", Smoke = "Tachanka", Rook = "Smoke", Pulse = "Rook", Oryx = "Pulse", Mute = "Oryx", Mozzie = "Mute", Mira = "Mozzie", Melusi = "Mira", Maestro = "Melusi", Lesion = "Maestro", Kapkan = "Lesion", Kaid = "Kapkan", Jager = "Kaid", Goyo = "Jager", Frost = "Goyo", Ela = "Frost", Echo = "Ela", Doc = "Echo", Clash = "Doc", Caveira = "Clash", Castle = "Caveira", Bandit = "Castle", Azami = "Bandit", Aruni = "Azami", Alibi = "Aruni"}
 
r_p["Ace"] = {-1, 26, 150, -1, 20, 500, -1, 24, 500, -1, 24, 800, -1, 19, 200}
r_p["Amaru"] = {0, 25, 150, -1, 21, 400, -1, 23, 700, -1, 27, 300, -1, 23, 150, -2, 24, 400, -2, 26, 550, -2, 29, 300, -2, 30, 250, -2, 25, 100}
r_p["Ash"] = {-1, 23, 150, -1, 20, 600, -1, 22, 1300}
r_p["Blackbeard"] = {0, 11, 150, 1, 9, 250, 2, 10, 650, 3, 11, 1050}
r_p["Buck"] = {0, 21, 150, 0, 18, 650, -1, 19, 1050, -1, 23, 500}
r_p["Capitao"] = {0, 19, 150, 0, 16, 400, -1, 18, 1000, -1, 21, 1050}
r_p["Dokkaebi"] = {3, 35, 150, 7, 29, 350, -2, 30, 500, -1, 33, 500}
r_p["Finka"] = {0, 48, 80, -1, 29, 700, -1, 33, 700, -1, 33, 1500, -2, 33, 6100}
r_p["Flores"] = {0, 21, 80, -1, 18, 350, 0, 19, 300, -1, 19, 200, 0, 19, 1400}
r_p["Fuze"] = {0, 48, 80, -1, 29, 700, -1, 33, 700, -1, 33, 1500, -2, 33, 6100}
r_p["Glaz"] = {0, 26, 60, 1, 24, 1600}
r_p["Gridlock"] = {0, 24, 60, 2, 17, 250, 3, 18, 400, 3, 20, 800, 4, 21, 1200, 4, 23, 1000, 5, 23, 1800}
r_p["Grim"] = {0, 16, 110, 0, 12, 500, -1, 12, 500, -1, 13, 850, 0, 14, 800}
r_p["Hibana"] = {0, 34, 40, -1, 22, 600, -1, 24, 300, -2, 25, 550}
r_p["Iana"] = {0, 21, 60, -1, 13, 1100, -1, 15, 550, -1, 17, 300}
r_p["IQ"] = {0, 16, 110, 0, 12, 500, -1, 12, 500, -1, 13, 850, 0, 14, 800}
r_p["Jackal"] = {0, 33, 70, 0, 25, 500, -1, 28, 600, -1, 28, 700}
r_p["Kali"] = {0, 16, 70, 1, 13, 200, -2, 13, 300, 4, 13, 1100}
r_p["Lion"] = {0, 32, 60, 0, 16, 300, 0, 18, 1700, 0, 21, 2300}
r_p["Maverick"] = {0, 29, 40, -1, 18, 200, -1, 20, 800, -1, 23, 1360}
r_p["Nokk"] = {0, 20, 40, 1, 14, 200, 1, 15, 800, 2, 17, 1100}
r_p["Nomad"] = {0, 26, 70, -1, 14, 1400, -1, 16, 1700, -1, 17, 750}
r_p["Osa"] = {0, 17, 80, 2, 16, 600, 3, 17, 300, 2, 17, 1800}
r_p["Sens"] = {1, 36, 40, 1, 21, 400, 0, 23, 1600, -1, 26, 300, -1, 26, 1800}
r_p["Sledge"] = {0, 21, 60, 1, 14, 450, 2, 14, 300, 2, 16, 2000}
r_p["Thatcher"] = {0, 21, 80, -1, 18, 350, 0, 19, 300, -1, 19, 200, 0, 19, 1400}
r_p["Thermite"] = {0, 17, 80, 2, 16, 600, 3, 17, 300, 2, 17, 1800}
r_p["Twitch"] = {0, 26, 80, -1, 22, 600, 0, 24, 200, -1, 24, 1000}
r_p["Ying"] = {0, 25, 60, -1, 18, 300, -1, 20, 450, 0, 21, 1800, 1, 23, 4800}
r_p["Zero"] = {0, 32, 40, -1, 23, 200, -1, 27, 700, -1, 28, 350, 0, 28, 650}
r_p["Zofia"] = {0, 31, 90, 1, 22, 600, 1, 22, 500, 0, 26, 1500}
 
r_p["Alibi"] = {0, 32, 60, 1, 22, 600, 3, 25, 200, 3, 26, 300, 5, 26, 550, 2, 26, 350}
r_p["Aruni"] = {0, 30, 10, 1, 17, 1000}
r_p["Azami"] = {0, 30, 10, -1, 16, 650, -1, 17, 800, 0, 18, 400, 0, 19, 500}
r_p["Bandit"] = {0, 18, 70, 1, 14, 800, 1, 16, 300, 0, 17, 650}
r_p["Castle"] = {0, 26, 30, 0, 12, 250, -1, 12, 200, 0, 12, 400, -2, 11, 700, 0, 12, 1100}
r_p["Caveira"] = {0, 8, 1000, -1, 8, 900, 0, 9, 600, -1, 8, 800}
r_p["Clash"] = {0, 8, 1000, -1, 8, 900, 0, 9, 600, -1, 8, 800}
r_p["Doc"] = {0, 32, 30, -1, 19, 600, 0, 21, 300, -1, 21, 500, -1, 23, 900}
r_p["Echo"] = {0, 34, 30, -1, 21, 600, 0, 23, 300, -1, 24, 1400}
r_p["Ela"] = {0, 26, 100, 3, 18, 500, 3, 27, 300, 3, 26, 900, 4, 26, 600}
r_p["Frost"] = {0, 18, 30, 0, 12, 600, 0, 11, 1100, 1, 12, 500, 0, 13, 1300}
r_p["Goyo"] = {0, 31, 60, -2, 26, 250, -2, 29, 150, 0, 29, 300, 6, 29, 600}
r_p["Jager"] = {0, 32, 60, -1, 17, 300, -1, 19, 1000, 0, 20, 700, -1, 20, 200}
r_p["Kaid"] = {0, 26, 60, 1, 13, 300, 1, 13, 800, 0, 15, 1650}
r_p["Kapkan"] = {0, 30, 10, 0, 19, 350, -1, 21, 300, -1, 21, 800, 0, 23, 400, -1, 24, 500}
r_p["Lesion"] = {0, 22, 50, 0, 17, 500, -1, 19, 300, 0, 20, 300, -1, 20, 100, 1, 20, 900}
r_p["Maestro"] = {0, 35, 20, 0, 14, 500, 0, 15, 500, 0, 16, 500, -1, 17, 600, 0, 17, 600, 0, 18, 2600}
r_p["Melusi"] = {0, 28, 40, 0, 14, 600, -1, 17, 1000, -1, 18, 700}
r_p["Mira"] = {0, 27, 60, 1, 20, 250, 2, 22, 300, 2, 23, 700}
r_p["Mozzie"] = {0, 29, 50, 0, 13, 300, -1, 14, 300, 0, 14, 400, 0, 16, 400, 0, 15, 700}
r_p["Mute"] = {0, 38, 60, 0, 26, 500, 0, 27, 200}
r_p["Oryx"] = {0, 27, 50, 0, 22, 500, 0, 23, 300, 1, 24, 300, 0, 25, 100, 1, 26, 600, 4, 26, 300}
r_p["Pulse"] = {0, 26, 30, 0, 12, 250, -1, 12, 200, 0, 12, 400, -2, 11, 700, 0, 12, 1100}
r_p["Rook"] = {0, 37, 20, -1, 20, 700, 0, 23, 200, -1, 23, 600, 0, 25, 300, -2, 25, 500}
r_p["Smoke"] = {0, 38, 60, 0, 26, 500, 0, 27, 200}
r_p["Tachanka"] = {0, 20, 20, 1, 6, 300, 0, 6, 200, 1, 7, 400, 1, 7, 500, 2, 7, 1200, 3, 6, 1200, 2, 7, 1200, 2, 7, 600, 2, 7, 1700}
r_p["Thorn"] = {0, 26, 50, 0, 15, 500, 1, 16, 500, 1, 18, 500, 0, 19, 300}
r_p["Thunderbird"] = {0, 32, 30, -1, 18, 250, 0, 18, 250, -1, 20, 500, -1, 21, 500, -1, 20, 500, 0, 21, 700}
r_p["Valkyrie"] = {0, 29, 20, 0, 14, 500, -1, 16, 500, -1, 16, 500, 1, 17, 500, 1, 18, 300}
r_p["Vigil"] = {0, 27, 30, -1, 15, 300, -1, 17, 500, -1, 18, 700, -1, 17, 500, -1, 17, 500}
r_p["Wamai"] = {0, 18, 40, 0, 9, 300, -1, 10, 400, 1, 11, 1400, 2, 11, 500, 2, 13, 200}
r_p["Warden"] = {0, 32, 20, 0, 17, 300, 0, 19, 350, -1, 19, 350, -1, 21, 500, 1, 21, 300, 1, 23, 200}
 
function Log()
  if not IsKeyLockOn("scrolllock") then
    ClearLog()
    OutputLogMessage("Current mode: Attackers | Scroll lock is OFF\n\n")
    OutputLogMessage("Selected Operator:   %s\n\n", o_s_a)
    OutputLogMessage("        (%s) | Ace            (%s) | Flores      (%s) | Jackal        (%s) | Sledge\n        (%s) | Amaru          (%s) | Fuze        (%s) | Kali          (%s) | Thatcher\n        (%s) | Ash            (%s) | Glaz        (%s) | Lion          (%s) | Thermite\n        (%s) | Blackbeard     (%s) | Gridlock    (%s) | Maverick      (%s) | Twitch\n        (%s) | Buck           (%s) | Grim        (%s) | Nokk          (%s) | Ying\n        (%s) | Capitao        (%s) | Hibana      (%s) | Nomad         (%s) | Zero\n        (%s) | Dokkaebi       (%s) | Iana        (%s) | Osa           (%s) | Zofia\n        (%s) | Finka          (%s) | IQ          (%s) | Sens\n\n", o_s_a == "Ace", o_s_a == "Flores", o_s_a == "Jackal", o_s_a == "Sledge", o_s_a == "Amaru", o_s_a == "Fuze", o_s_a == "Kali", o_s_a == "Thatcher", o_s_a == "Ash", o_s_a == "Glaz", o_s_a == "Lion", o_s_a == "Thermite", o_s_a == "Blackbeard", o_s_a == "Gridlock", o_s_a == "Maverick", o_s_a == "Twitch", o_s_a == "Buck", o_s_a == "Grim", o_s_a == "Nokk", o_s_a == "Ying", o_s_a == "Capitao", o_s_a == "Hibana", o_s_a == "Nomad", o_s_a == "Zero", o_s_a == "Dokkaebi", o_s_a == "Iana", o_s_a == "Osa", o_s_a == "Zofia", o_s_a == "Finka", o_s_a == "IQ", o_s_a == "Sens")
  else if IsKeyLockOn("scrolllock") then
    ClearLog()
    OutputLogMessage("Current mode: Defenders | Scroll lock is ON\n\n")
    OutputLogMessage("Selected Operator:   %s\n\n", o_s_d)
    OutputLogMessage("        (%s) | Alibi        (%s) | Echo          (%s) | Maestro       (%s) | Smoke\n        (%s) | Aruni        (%s) | Ela           (%s) | Melusi        (%s) | Tachanka\n        (%s) | Azami        (%s) | Frost         (%s) | Mira          (%s) | Thorn\n        (%s) | Bandit       (%s) | Goyo          (%s) | Mozzie        (%s) | Thunderbird\n        (%s) | Castle       (%s) | Jager         (%s) | Mute          (%s) | Valkyrie\n        (%s) | Caveira      (%s) | Kaid          (%s) | Oryx          (%s) | Vigil\n        (%s) | Clash        (%s) | Kapkan        (%s) | Pulse         (%s) | Wamai\n        (%s) | Doc          (%s) | Lesion        (%s) | Rook          (%s) | Warden\n\n", o_s_d == "Alibi", o_s_d == "Echo", o_s_d == "Maestro", o_s_d == "Smoke", o_s_d == "Aruni", o_s_d == "Ela", o_s_d == "Melusi", o_s_d == "Tachanka", o_s_d == "Azami", o_s_d == "Frost", o_s_d == "Mira", o_s_d == "Thorn", o_s_d == "Bandit", o_s_d == "Goyo", o_s_d == "Mozzie", o_s_d == "Thunderbird", o_s_d == "Castle", o_s_d == "Jager", o_s_d == "Mute", o_s_d == "Valkyrie", o_s_d == "Caveira", o_s_d == "Kaid", o_s_d == "Oryx", o_s_d == "Vigil", o_s_d == "Clash", o_s_d == "Kapkan", o_s_d == "Pulse", o_s_d == "Wamai", o_s_d == "Doc", o_s_d == "Lesion", o_s_d == "Rook", o_s_d == "Warden")
  end
  end
end
 
function OnEvent(event, arg)
  EnablePrimaryMouseButtonEvents(true)
    if event == "MOUSE_BUTTON_PRESSED" and arg == 3 and IsModifierPressed("lctrl") and not IsKeyLockOn("scrolllock") then
      o_s_a = n_o_s_a[o_s_a]
      r_o = r_p[o_s_a] or {}
      Log()
    else if event == "MOUSE_BUTTON_PRESSED" and arg == 3 and IsModifierPressed("lctrl") and IsKeyLockOn("scrolllock") then
      o_s_d = n_o_s_d[o_s_d]
      r_o = r_p[o_s_d] or {}
      Log()
    else if event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsMouseButtonPressed(3) and not IsKeyLockOn("capslock") then
        for xy = 3, #r_o, 3 do
          local c_t = GetRunningTime()
          local h_r = r_o[xy-2]
          local v_r = r_o[xy-1]
          local r_d = r_o[xy]
            repeat
              local d_t = GetRunningTime() - c_t, r_d
              MoveMouseRelative(h_r, v_r)
              Sleep(10)
            until d_t >= r_d or not IsMouseButtonPressed(1) or not IsMouseButtonPressed(3)
        if not IsMouseButtonPressed(1) or not IsMouseButtonPressed(3) then break end
        end
    end
    end
    end
end
