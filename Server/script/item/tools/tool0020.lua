--lenh bai
Include( "\\script\\item\\checkmapid.lua" )

function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	CastSkill( 492, 1);		--��������30%,��������50%
	Msg2Player("B�n �� s� d�ng 1 l�nh b�i");
	RemoveItem(nItemIdx,1,1);
end