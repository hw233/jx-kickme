
-- Script vat pham bi kip ngu doc
Include("\\Script\\library\\worldlibrary.lua");

function useitem(nItemIdx)
	if (GetFactionEx() ~= "ND") then
		Msg2Player("B�n xem qua m�t t�ch nhi�u l�n nh�ng kh�ng hi�u g�!")
	return end
	if(GetLevel() < 80) then
		Msg2Player("��ng c�p ch�a ��t 80 kh�ng th� l�nh h�i!")
	return end
	if(GetMagicLevel(353) > 0) then
		Msg2Player("B�n �� t�ng h�c v� c�ng n�y r�i!")
	return end
	RemoveItem(nItemIdx, 1)
	AddMagic(353,1)
	Msg2Player("L�nh h�i ���c k� n�ng �m Phong Th�c C�t!")
end;
