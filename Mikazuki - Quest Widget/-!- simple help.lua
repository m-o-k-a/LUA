--Quest Widget - Version 1.0 - By Mikazuki (eddy_de_galdon)
--A scipt to make a simple widget for display the current quest
--It's a very simple script for make little quest

You can find more Help in the script !
1. 
Quest_ID is the variable for the Quest'ID
Quest_ID2,3,etc. are the variable for the subquest. you can create a lot of subquest in a quest !

2.
--It's a block of a quest, :

--Quest ID = X  [This comment is for know what is the quest_ID]
if Quest_ID == X then --[X is the value of the quest id]
TextCenterOnXColor(A,B,C,D,R,G,B)
TextCenterOnXColor(A,B,C,"E",R,G,B) B +5 -> 20
TextCenterOnX(A,B,C,"E",R,G,B) B + 5 -> 25
end
A : Xposition
B : Yposition
C : Size
D : Name of the quest ""
E : Name of the quest's goal
R : value of red color
G : value of green color
B : value of blue color

	--Quest ID = X
	-- if Quest_ID == X then
	-- TextCenterOnXColor(10,15,3.5,"{QUEST NAME}",R,G,B) --chose a text color with R, V, B (example : black : 0,0,0)
    -- TextCenterOnXColor(10,20,3,"QUEST INFORMATION",R,G,B) --(Xposition, Yposition, Size, text,red,green,blue)
	-- --TextCenterOnX(10,25,3,"quest_information_2") etc. --Add 5 at the Y position...
	-- end