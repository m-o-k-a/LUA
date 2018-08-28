--*Dialogue Example : More Complex Dialogue*

--Begin=
--Create Local Varaible
local text_npc = {}
local timer = {}
local timer_check = {}
local enddialogue_npc = {}


function dialogue_ex04_init(e)
--Set Variable to 0
text_npc[e] = 0
enddialogue_npc[e] = 0
timer[e] = 0
timer_check[e] = 0
--set?entityhealth
ai_old_health[e] = -1
end

function dialogue_ex04_main(e)
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
    --dialogue00
	if text_npc[e] == 0 then 
		PromptDuration("Man : Hi ! What's news ?",500)
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
		TextCenterOnX(50,75,3,"[v] Hi, no news :(")
		TextCenterOnX(50,80,3,"[b] The soldier of the army was dead...")
		TextCenterOnX(50,85,3,"[n] i can't say you that...")
		
		if g_InKey == "v" then 
			text_npc[e] = -1
			timer[e] = 0
			timer_check[e] = 0
			enddialogue_npc[e] = 1
		elseif g_InKey == "b" then
			text_npc[e] = -1
			timer[e] = 0
			timer_check[e] = 0
			enddialogue_npc[e] = 2
		elseif g_InKey == "n" then
			text_npc[e] = -1
			timer[e] = 0
			timer_check[e] = 0
			text_npc[e] = 2
		end
	end
	
    --dialogue02
	if text_npc[e] == 2 then 
		PromptDuration("Man : ... What's wrong ?",500)
			if timer[e] == 0 then
			timer_check[e] = GetTimer(e)
			timer[e] = 1
		end
		if GetTimer(e) > timer_check[e] + 500 then
		text_npc[e] = 3
		timer[e] = 0
		end
	end
		
    --dialogue03
	if text_npc[e] == 3 then
		TextCenterOnX(50,80,3,"[b] The soldier of the army was dead... (TRUE)")
		TextCenterOnX(50,85,3,"[n] the army defeat the order... (FALSE)")
		
		if g_InKey == "b" then
			text_npc[e] = -1
			timer[e] = 0
			timer_check[e] = 0
			enddialogue_npc[e] = 2
		elseif g_InKey == "n" then
			text_npc[e] = -1
			timer[e] = 0
			timer_check[e] = 0
			enddialogue_npc[e] = 3
		end
	end
	
	
	--enddialogue_npc ->
    --end01
		if enddialogue_npc[e] == 1 then
		PromptDuration("Man : Oh... Come back later !", 2000)
		enddialogue_npc[e] = 0
	end	
	
    --end02
	if enddialogue_npc[e] == 2 then
		PromptDuration("Man : No, It's Impossible !! Kill me !!!",500)
		enddialogue_npc[e] = 0	
	end
	
    --end03
	if enddialogue_npc[e] == 3 then
		PromptDuration("Man : It's a great news !",500)
		enddialogue_npc[e] = 0	
	end
	
end

end
--=End