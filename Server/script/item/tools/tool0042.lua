Include( "\\script\\item\\checkmapid.lua" )
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
		AddSkillState(472, 20, 54 )	--�������Ѫ�������������ָ�
		Msg2Player("<#> B�n s� d�ng 1 C�n Kh�n T�o H�a �an (L�n) .")	
	RemoveItem(nItemIdx,1,1);
end