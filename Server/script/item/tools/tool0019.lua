--chien co
Include( "\\script\\item\\checkmapid.lua" )

function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	CastSkill( 491, 1);			--�����������30%,ȫ������30%
	Msg2Player("B�n �� s� d�ng 1 Chi�n c� ");
	RemoveItem(nItemIdx,1,1);
end