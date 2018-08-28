--Easy Diaologue Script - Version 1.0 - By Mikazuki (eddy_de_galdon)
--A scipt to make dialogue 			
--For a choice with a switch AI, add this command  : Include("ai_name.lua") in the init. and add : SwitchScript(e,"ai_name") on the text.

--for add a text_npc phase; go to the ""text_npc ->"" part and add :
    -- if text_npc[e] == "text_value" then 
		-- PromptDuration("text",duration)
			-- if timer[e] == 0 then
			-- timer_check[e] = GetTimer(e)
			-- timer[e] = 1
		-- end
		-- if GetTimer(e) > timer_check[e] + duration then
		-- *Special_Choice*
		-- timer[e] = 0
		-- end
	-- end
	
--for add a player_choice in the text_npc phase; go to the ""text_npc ->"" part and add :
-- if text_npc[e] == "text_value" then
		-- TextCenterOnX(50,80,3,"[key]- Text")
		-- TextCenterOnX(50,85,3,"[key2]- Text2")
		
		-- if g_InKey == "[key]" then 
		    --text_npc[e] = -1
			-- timer[e] = 0
			-- timer_check[e] = 0
			-- *Special_Choice*
		-- elseif g_InKey == "[key2]" then
		    --text_npc[e] = -1
			-- timer[e] = 0
			-- timer_check[e] = 0
			-- *Special_Choice*
		-- end
	-- end
	
--for add a enddialogue_npc phase (end of the dialogue) ; go to the ""enddialogue_npc ->"" part and add :
	-- if enddialogue_npc[e] == "text_value" then
		-- PromptDuration("Text",duration)	
		-- enddialogue_npc[e] = 0
	-- end
	
	--*Special_Choice* : When *Special_Choice* was write, use this command :
	--To go on a text_npc phase : text_npc[e] = value
	--To go on a enddialogue_npc phase : enddialogue_npc[e] = value