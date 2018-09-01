--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||Feaure:	 hop vuot ai
--||Description:	You are missing in my heart

function useitem(nItemIndex)
	if (CheckRoom(2,3) == 0) then
		Talk(1,"","Xin s¾p xÕp hµnh trang 2x3 «!")
	return end
	levatchung();
	RemoveItem(nItemIndex,1)
end;

function levatchung()
	local nRand = RANDOM(700);
	if(nRand == 599) then
		AddItem(0,5,RANDOM(22,24),0,0,5,0,0)
	elseif(nRand == 499) then
		AddItem(2,0,RANDOM(190,192),0,0,0,5,0)
	elseif(nRand == 399) then
		AddItem(0,5,1,0,0,5,0,0)
	elseif(nRand == 299) then
		AddItem(2,0,RANDOM(185,187),0,0,0,5,0)
	elseif(nRand == 199) then
		AddItem(0,2,RANDOM(53,55),0,0,5,0,0)	
	elseif(nRand < 250) then
		AddItem(0,2,2,0,0,5,1,0)
	elseif(nRand < 300) then
		AddItem(0,2,3,0,0,5,1,0)
	elseif(nRand < 400) then
		AddItem(0,3,34,0,0,5,1,0)
	elseif(nRand < 500) then
		AddItem(0,3,0,0,random(5,10),5,1,0)
	elseif(nRand < 600) then
		AddItem(0,3,27,0,0,0,1,0)
	else
		AddItem(0,2,56,0,0,5,1,0)
	end
end