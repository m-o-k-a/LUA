--Quest Widget - Version 1.0 - By Mikazuki (eddy_de_galdon)
--A script to make a simple widget for display the current quest
--It's a very simple script for make little quest
-- Press 1 to display and 2 to undisplay
--
--For Add a Quest, copy this command :

	--Quest ID = X
	-- if Quest_ID == X then
	-- TextCenterOnXColor(10,15,3.5,"{QUEST NAME}",R,G,B) --chose a text color with R, V, B (example : black : 0,0,0)
    -- TextCenterOnXColor(10,20,3,"QUEST INFORMATION",R,G,B) --(Xposition, Yposition, Size, text,red,green,blue)
	-- --TextCenterOnX(10,25,3,"quest_information_2") etc. --Add 5 at the Y position...
	-- end
--
--
Display = false
Quest_ID = 0 --Quest_ID is the variable for the quest value.
Quest_ID2 = 0 --Additional variable for sub event quest



function _quest_widget_init(e)
--
end

function _quest_widget_main(e)
    if g_InKey == "1" then 
	 Display = true
	end
	if g_InKey == "2" then 
	Display = false
	end
	
	
	if Display == true then
	    --Panel(x1,y1,X2,Y2)
    Panel(0,0,30,30)
	   --Main Text
	TextCenterOnX(10,5,3,"QUEST LOG")
	--Add the quest here 

	
	
	--
end
end