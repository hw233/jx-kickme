Include( "\\script\\item\\checkmapid.lua" )
--khang don chi giac
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	CastSkill( 510, 1);		-- 3�����ڣ����ٸ����з�����˺�����20%
	Msg2Player("B�n s� d�ng 1 Kh�ng ��n chi gi�c");
	RemoveItem(nItemIdx,1,1);
end