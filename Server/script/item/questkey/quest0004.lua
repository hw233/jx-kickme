
-- Script vat pham bi kip thieu lam
Include("\\Script\\library\\worldlibrary.lua");

function useitem(nItemIdx)
	if (GetFactionEx() ~= "TL") then
		Msg2Player("B�n xem qua m�t t�ch nhi�u l�n nh�ng kh�ng hi�u g�!")
	return end
	if(GetLevel() < 80) then
		Msg2Player("��ng c�p ch�a ��t 80 kh�ng th� l�nh h�i!")
	return end
	if(GetMagicLevel(321) > 0) then
		Msg2Player("B�n �� t�ng h�c v� c�ng n�y r�i!")
	return end
	RemoveItem(nItemIdx, 1)
	AddMagic(321,1)
	Msg2Player("L�nh h�i ���c k� n�ng V� T��ng Tr�m!")
end;
