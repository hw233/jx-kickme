--Script Created by Ken Nguyen
--Ngu sac bao ngoc Tieu 100v
function useitem(nItemIdx)
	local money = GetCash() + 1000000;
	if (money > 2000000000 or money < 0) then
		Msg2Player("S� ti�n trong h�nh trang v��t qu� m�c cho ph�p!");
	else
		Earn(1000000);
		RemoveItem(nItemIdx, 1);
	end
end;
