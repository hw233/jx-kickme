Include( "\\script\\item\\checkmapid.lua" )
--tong kim phi toc hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 496, 5 , 3240);
	Msg2Player("B�n ���c 1 vi�n Phi T�c ho�n");
	RemoveItem(nItemIdx,1,1);
end