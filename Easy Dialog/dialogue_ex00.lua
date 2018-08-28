--*Dialogue Example : easy start for you*

--Begin=
--Create Local Varaible
local text_npc = {}
local timer = {}
local timer_check = {}
local enddialogue_npc = {}


function dialogue_ex00_init(e)
--Set Variable to 0
text_npc[e] = 0
enddialogue_npc[e] = 0
timer[e] = 0
timer_check[e] = 0
--set?entityhealth
ai_old_health[e] = -1
end

function dialogue_ex00_main(e)
--Set Entity Health
if ai_old_health[e]==-1 then
     ai_old_health[e] = g_Entity[e]['health']
 end
--Get the value of Player Distance.
PlayerDist = GetPlayerDistance(e)
--If Player is a X distance, restart the dialogue (can be delete if you want "the npc don't repeat the same stupid things")
if PlayerDist > 100  then
     text_npc[e] = 0
     enddialogue_npc[e] = 0
     timer[e] = 0
     timer_check[e] = 0
end

--If Player is a X distance, start the dialogue
if PlayerDist < 100  then
	RotateToPlayer(e)
	
--text_npc ->
--put command here

--enddialogue_npc ->
--put command here
	
end

end
--=End