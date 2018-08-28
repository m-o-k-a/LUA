-- LUA Script - precede every function and global member with lowercase name of script + '_main'

function blue_rune_quest_init(e)
end

function blue_rune_quest_main(e)
 PlayerDist = GetPlayerDistance(e)
 if PlayerDist < 80 and g_PlayerHealth > 0 then
   PromptDuration("Collected the blue rune",3000)
   Quest_ID3 = 1
   Destroy(e)
 end
end
