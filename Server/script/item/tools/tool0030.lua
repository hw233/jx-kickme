Include( "\\script\\item\\checkmapid.lua" )
--tong kim truong menh hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 488, 5 , 3240);
	Msg2Player("B¹n ®­îc 1 viªn Tr­êng MÖnh hoµn");
	RemoveItem(nItemIdx,1,1);
end