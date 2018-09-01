Include( "\\script\\item\\checkmapid.lua" )
--tong kim gia bao hoan
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	AddSkillState( 493, 2 , 3240);
	Msg2Player("B¹n ®­îc 1 viªn Gia Bµo hoµn");
	RemoveItem(nItemIdx,1,1);
end