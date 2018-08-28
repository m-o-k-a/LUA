--Quest Widget - Version 1.0 - By Mikazuki (eddy_de_galdon)
--A scipt to make a simple widget for display the current quest
--It's a very simple script for make little quest
-- Press 1 to display and 2 to undisplay
Display = false
Quest_ID = 0 --Quest_ID is the variable for the quest value.
Quest_ID2 = 0 --Additional variable for sub event quest
Quest_ID3 = 0 --Additional variable for sub event quest



function _quest_widget_example_init(e)
--
end

function _quest_widget_example_main(e)
    if g_InKey == "1" then 
	 Display = true
	end
	if g_InKey == "2" then 
	Display = false
	end
     	   --// Notification for update
	
	if Display == true then
    --Panel
    Panel(0,0,20,30)
	--Main Text
	TextCenterOnX(10,5,3,"QUEST LOG")
	--Add the quest here 

	--Quest ID = 0
	if Quest_ID == 0 then
	TextCenterOnXColor(10,15,3.5,"{Where is my sword ?}",255,255,255) --chose a text color with R, V, B (example : black : 0,0,0)
    TextCenterOnXColor(10,20,3,"Find your weapons",255,255,255) --(Xposition, Yposition, Size, text,red,green,blue)
	--TextCenterOnX(10,25,3,"quest_information_2") etc. --Add 5 at the Y position...
	end
	
	--Quest ID = 1 --Quest with 2 goals, when you find the quest's object, the text change.
	if Quest_ID == 1 then
    TextCenterOnXColor(10,15,3.5,"{Find The Runes}",255,255,255)
	if Quest_ID2 == 1 then
    TextCenterOnXColor(10,20,3,"⇪ find the red rune",255,0,0)
	else
    TextCenterOnXColor(10,20,3,"find the red rune",255,76,0)
	end
	if Quest_ID3 == 1 then
    TextCenterOnXColor(10,25,3,"⇪ find the blue rune",0,0,255)
	else
    TextCenterOnXColor(10,25,3,"find the blue rune",0,182,255)
	end
	end
	
	
	--
end
end