--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||Feaure:	 bao ruong thuy tac
--||Description:	You are missing in my heart
Include("\\script\\item\\event\\event0026.lua");
function useitem(nItemIndex)
	if (CheckRoom(2,3) == 0) then
		Talk(1,"","Xin s¾p xÕp hµnh trang 2x3 «!")
	return end
	levatchung();
	RemoveItem(nItemIndex,1)
end;
