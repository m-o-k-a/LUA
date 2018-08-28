--*Dialogue Example : If you hurt this entity, he will KILL YOU !*

--Begin= 
--Create Local Varaible
local text_npc = {}
local timer = {}
local timer_check = {}
local enddialogue_npc = {}


function dialogue_ex03_init(e)
--Add IA for make switch
Include("ai_fantasycreature.lua")
--Set Variable to 0
text_npc[e] = 0
enddialogue_npc[e] = 0
timer[e] = 0
timer_check[e] = 0
--set?entityhealth
ai_old_health[e] = -1
end

function dialogue_ex03_main(e)
--Set Entity Health
if ai_old_health[e]==-1 then
     ai_old_health[e] = g_Entity[e]['health']
 end
 --Check health
if g_Entity[e]['health'] < ai_old_health[e] then
--change AI
     SwitchScript(e,"ai_fantasycreature")
     ai_old_health[e] = g_Entity[e]['health']
     PlayCharacterSound(e,"onHurt")
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
    --dialogue00
	if text_npc[e] == 0 then 
		PromptDuration("Man : salut jeune personnages inutile !",500)
			if timer[e] == 0 then
			timer_check[e] = GetTimer(e)
			timer[e] = 1
		end
		if GetTimer(e) > timer_check[e] + 500 then
		text_npc[e] = 1
		timer[e] = 0
		end
	end
	
    --dialogue01
	if text_npc[e] == 1 then
		TextCenterOnX(50,80,3,"[b] WHAT ?!")
		TextCenterOnX(50,85,3,"[v] I don't speack french...")
		
		if g_InKey == "b" then 
			text_npc[e] = -1
			timer[e] = 0
			timer_check[e] = 0
			enddialogue_npc[e] = 1
		elseif g_InKey == "v" then
			text_npc[e] = -1
			timer[e] = 0
			timer_check[e] = 0
			enddialogue_npc[e] = 2
		end
	end
		
	
	--enddialogue_npc ->
    --end01
		if enddialogue_npc[e] == 1 then
		PromptDuration("Man : Encore un anglais ?!", 500)
		enddialogue_npc[e] = 0
	end	
	
    --end02
	if enddialogue_npc[e] == 2 then
		PromptDuration("Man : me too... WAIT !?",500)
		enddialogue_npc[e] = 0	
	end
	
end

end
--=End